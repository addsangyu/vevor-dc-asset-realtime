package com.vevor.dc.asset.realtime.shema;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.ververica.cdc.debezium.DebeziumDeserializationSchema;
import io.debezium.data.Envelope;
import org.apache.flink.api.common.typeinfo.BasicTypeInfo;
import org.apache.flink.api.common.typeinfo.TypeInformation;
import org.apache.flink.util.Collector;
import org.apache.kafka.connect.data.Field;
import org.apache.kafka.connect.data.Struct;
import org.apache.kafka.connect.source.SourceRecord;

/**
 * @Author: sangyu
 * @Date: 2022/4/1 16:05
 */
public class MyCDCDeserializationSchema implements DebeziumDeserializationSchema<String> {

    /**
     * {
     * "data":"{"id":11,"tm_name":"sasa"}",
     * "db":"",
     * "tableName":"",
     * "op":"c u d",
     * "ts":""
     * }
     */
    @Override
    public void deserialize(SourceRecord sourceRecord, Collector<String> collector) throws Exception {

        //获取主题信息,提取数据库和表名
        String topic = sourceRecord.topic();
        String[] fields = topic.split("\\.");
        String db = fields[1];
        String tableName = fields[2];

        //获取Value信息,提取数据本身
        Struct value = (Struct) sourceRecord.value();
        Struct after = value.getStruct("after");

//        System.out.println(value);

        if(after != null){
            JSONObject jsonObject = new JSONObject();
            for (Field field : after.schema().fields()) {
                Object o = after.get(field);
                jsonObject.put(field.name(), o);
            }

            //获取操作类型
            Envelope.Operation operation = Envelope.operationFor(sourceRecord);

            //创建结果JSON
            JSONObject result = new JSONObject();
            result.put("database", db);
            result.put("tableName", tableName);
            result.put("data", jsonObject);
            result.put("op", operation);

            //输出数据
            collector.collect(result.toJSONString());
        }
    }

    @Override
    public TypeInformation<String> getProducedType() {
        return BasicTypeInfo.STRING_TYPE_INFO;
    }
}