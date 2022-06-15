import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.ververica.cdc.connectors.mysql.MySQLSource;
import com.alibaba.ververica.cdc.connectors.mysql.table.StartupOptions;
import com.alibaba.ververica.cdc.debezium.DebeziumSourceFunction;
import com.starrocks.connector.flink.StarRocksSink;
import com.starrocks.connector.flink.table.sink.StarRocksSinkOptions;
import com.vevor.dc.asset.realtime.shema.MyCDCDeserializationSchema;
import com.vevor.dc.asset.realtime.utils.DateUtils;
import com.vevor.dc.asset.realtime.tools.Tools;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.SystemUtils;
import org.apache.flink.api.common.functions.FilterFunction;
import org.apache.flink.api.common.functions.MapFunction;
import org.apache.flink.api.common.restartstrategy.RestartStrategies;
import org.apache.flink.api.java.utils.ParameterTool;
import org.apache.flink.contrib.streaming.state.RocksDBStateBackend;
import org.apache.flink.runtime.state.StateBackend;
import org.apache.flink.streaming.api.CheckpointingMode;
import org.apache.flink.streaming.api.TimeCharacteristic;
import org.apache.flink.streaming.api.datastream.DataStream;
import org.apache.flink.streaming.api.datastream.DataStreamSource;
import org.apache.flink.streaming.api.environment.CheckpointConfig;
import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;

/**
 * @author sangyu
 */
@Component("test")
@Slf4j
public class TestCDCHandler extends Tools {


    @Override
    public int run(StreamExecutionEnvironment env, String[] args) throws IOException {
        ParameterTool parameterTool = (ParameterTool) env.getConfig().getGlobalJobParameters();
        env.setStreamTimeCharacteristic(TimeCharacteristic.ProcessingTime);
        env.setParallelism(1);

        // checkpoint config
        env.enableCheckpointing(parameterTool.getLong("checkpoint.interval"), CheckpointingMode.EXACTLY_ONCE);
        env.setRestartStrategy(RestartStrategies.noRestart());//重启策略
        env.getCheckpointConfig().enableExternalizedCheckpoints(CheckpointConfig.ExternalizedCheckpointCleanup.RETAIN_ON_CANCELLATION);//退出不删除checkpoint
        /****    Flink环境配置        ****/
        if (!SystemUtils.IS_OS_WINDOWS) {
            StateBackend stateBackend = new RocksDBStateBackend(
                    parameterTool.get("state.backend.dir") + File.separator + "test" + File.separator + DateUtils.getDateTime("yyyyMMdd_HHmmss"));
            env.setStateBackend(stateBackend);
        }

        DebeziumSourceFunction<String> sourceFunction = MySQLSource
                .<String>builder()
                .hostname("rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com")
                .port(3306)
                .username("readonly")
                .password("7RNz8iz#PfRDz#ULnqIHRTNQ")
                .databaseList("prm_db")
                .tableList("prm_db.combine_sku,prm_db.combine_sku_attachment,prm_db.combine_sku_history")
                .startupOptions(StartupOptions.initial())
//                .startupOptions(StartupOptions.earliest())
//                .startupOptions(StartupOptions.latest())
//                .startupOptions(StartupOptions.specificOffset())
//                .startupOptions(StartupOptions.timestamp())
                .deserializer(new MyCDCDeserializationSchema())
                .build();
        DataStreamSource<String> streamSource = env.addSource(sourceFunction);

        DataStream<String> filterStream = streamSource.filter(new FilterFunction<String>() {
            @Override
            public boolean filter(String str) throws Exception {
                if(str.contains("\"op\":\"CREATE\"") || str.contains("\"op\":\"UPDATE\"")){
                    return true;
                }
                return false;
            }
        }).map(new MapFunction<String, String>() {
            @Override
            public String map(String value) throws Exception {
                JSONObject jsonObject = JSON.parseObject(value);
                System.out.println(jsonObject.getString("tableName"));
                return jsonObject.getString("data");
            }
        });
        filterStream.print();
//        filterStream.addSink(
//                StarRocksSink.sink(
//                        // the sink options
//                        StarRocksSinkOptions.builder()
////                                .withProperty("jdbc-url", "jdbc:mysql://fe1_ip:query_port,fe2_ip:query_port,fe3_ip:query_port?xxxxx")
////                                .withProperty("load-url", "fe1_ip:http_port;fe2_ip:http_port;fe3_ip:http_port")
//                                .withProperty("jdbc-url", "jdbc:mysql://16.163.0.161:9030?test")
//                                .withProperty("load-url", "16.163.0.161:8030")
//                                .withProperty("webserver", "16.163.0.161:8040")
//                                .withProperty("username", "root")
//                                .withProperty("password", "")
//                                .withProperty("table-name", "combine_sku")
//                                .withProperty("database-name", "test")
//                                .withProperty("sink.properties.format", "json")
//                                .withProperty("sink.properties.strip_outer_array", "true")
//                                .build()
//                )
//        );

        return 0;
    }
}
