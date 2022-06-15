package com.vevor.dc.asset.realtime.app;

import com.vevor.dc.asset.realtime.tools.Tools;
import com.vevor.dc.asset.realtime.utils.DateUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.SystemUtils;
import org.apache.flink.api.common.restartstrategy.RestartStrategies;
import org.apache.flink.api.java.utils.ParameterTool;
import org.apache.flink.configuration.Configuration;
import org.apache.flink.contrib.streaming.state.RocksDBStateBackend;
import org.apache.flink.runtime.state.StateBackend;
import org.apache.flink.streaming.api.CheckpointingMode;
import org.apache.flink.streaming.api.TimeCharacteristic;
import org.apache.flink.streaming.api.environment.CheckpointConfig;
import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;
import org.apache.flink.table.api.StatementSet;
import org.apache.flink.table.api.TableResult;
import org.apache.flink.table.api.bridge.java.StreamTableEnvironment;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;

import static com.vevor.dc.asset.realtime.sql.VevorEvolutionDbByDML.*;
import static com.vevor.dc.asset.realtime.sql.VevorEvolutionDbBySinkDDL.*;
import static com.vevor.dc.asset.realtime.sql.VevorEvolutionDbBySourceDDL.*;


/**
 * prm.product_listing（刊登数据主表）
 * prm.product_listing_attribute（多属性子SKU表）
 *
 * @author sangyu
 */
@Component("cdc_product_listing")
@Slf4j
public class CdcProductListingHandler extends Tools {


    @Override
    public int run(StreamExecutionEnvironment env, String[] args) throws IOException {
        ParameterTool parameterTool = (ParameterTool) env.getConfig().getGlobalJobParameters();
        env.setStreamTimeCharacteristic(TimeCharacteristic.ProcessingTime);
//        env.setParallelism(1);

        // checkpoint config
        env.enableCheckpointing(parameterTool.getLong("checkpoint.interval"), CheckpointingMode.EXACTLY_ONCE);
        env.getCheckpointConfig().setCheckpointTimeout(parameterTool.getLong("checkpoint.timeout"));//修改为30分钟，cdc首次慢
        env.setRestartStrategy(RestartStrategies.noRestart());//重启策略
        env.getCheckpointConfig().enableExternalizedCheckpoints(CheckpointConfig.ExternalizedCheckpointCleanup.RETAIN_ON_CANCELLATION);//退出不删除checkpoint
        if (!SystemUtils.IS_OS_WINDOWS) {
            StateBackend stateBackend = new RocksDBStateBackend(
                    parameterTool.get("state.backend.dir") + File.separator + parameterTool.get("project_name") + File.separator + DateUtils.getDateTime("yyyyMMdd"));
            env.setStateBackend(stateBackend);
        }

//        EnvironmentSettings build = EnvironmentSettings.newInstance().useBlinkPlanner().inStreamingMode().build();
//        StreamTableEnvironment tableEnv = StreamTableEnvironment.create(env, build);
        StreamTableEnvironment tableEnv = StreamTableEnvironment.create(env);
        Configuration configuration = tableEnv.getConfig().getConfiguration();
        configuration.setString("pipeline.name", parameterTool.get("project_name"));
        /**
         * Caused by: org.apache.flink.table.api.TableException: Column 'id' is NOT NULL, however, a null value is being written into it. You can set job configuration 'table.exec.sink.not-null-enforcer'='drop' to suppress this exception and drop such records silently.
         */
        configuration.setString("table.exec.sink.not-null-enforcer", "drop");
        StatementSet stmtSet = tableEnv.createStatementSet();//https://developer.aliyun.com/ask/316204

        //prm.product_listing（刊登数据主表）
        tableEnv.executeSql(product_listing_src);
        tableEnv.executeSql(product_listing_sink);
        stmtSet.addInsertSql(product_listing_dml);

        //prm.product_listing_attribute（多属性子SKU表）
        tableEnv.executeSql(product_listing_attribute_src);
        tableEnv.executeSql(product_listing_attribute_sink);
        stmtSet.addInsertSql(product_listing_attribute_dml);

        // 执行刚刚添加的所有 INSERT 语句
        TableResult tableResult = stmtSet.execute();

        // 通过 TableResult 来获取作业状态
        System.out.println("作业状态>>>>>> " + tableResult.getJobClient().get().getJobStatus());
        System.out.println("jobId>>>>>> " + tableResult.getJobClient().get().getJobID());


//        Table table = tableEnv.sqlQuery("select * from combine_sku_src");
//        tableEnv.toRetractStream(table, Row.class).print();
        return 0;
    }
}
