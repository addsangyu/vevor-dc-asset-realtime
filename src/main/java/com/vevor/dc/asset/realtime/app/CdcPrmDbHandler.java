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


import static com.vevor.dc.asset.realtime.sql.PrmDbBySourceDDL.*;
import static com.vevor.dc.asset.realtime.sql.PrmDbBySinkDDL.*;
import static com.vevor.dc.asset.realtime.sql.PrmDbByDML.*;

/**
 * prm表(李斌、成利宁提供)    rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com
 * prm_db.model_basic (刊登数据主表)
 * prm_db.model_platform_mall (独立站平台)
 * prm_db.model_platform_walmart (walmart SC 平台)
 * prm_db.model_platform_walmart_dsv(walmart DSV 平台)
 * prm_db.model_platform_aliexpress (速卖通平台)
 * prm_db.multiattr_model_aliexpress (速卖通多属性)
 * prm_db.combine_sku (组合sku主表)
 * prm_db.combine_sku_attachment (组合sku从表)
 * prm_db.combine_sku_history (组合sku历史数据表)
 *
 * @author sangyu
 */
@Component("cdc_prm_db")
@Slf4j
public class CdcPrmDbHandler extends Tools {


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
        StatementSet stmtSet = tableEnv.createStatementSet();//https://developer.aliyun.com/ask/316204

        //prm_db.model_basic (刊登数据主表)
        tableEnv.executeSql(model_basic_src);
        tableEnv.executeSql(model_basic_sink);
        stmtSet.addInsertSql(model_basic_dml);

        //prm_db.model_platform_mall (独立站平台)
        tableEnv.executeSql(model_platform_mall_src);
        tableEnv.executeSql(model_platform_mall_sink);
        stmtSet.addInsertSql(model_platform_mall_dml);

        //prm_db.model_platform_walmart (walmart SC 平台)
        tableEnv.executeSql(model_platform_walmart_src);
        tableEnv.executeSql(model_platform_walmart_sink);
        stmtSet.addInsertSql(model_platform_walmart_dml);

        //prm_db.model_platform_walmart_dsv(walmart DSV 平台)
        tableEnv.executeSql(model_platform_walmart_dsv_src);
        tableEnv.executeSql(model_platform_walmart_dsv_sink);
        stmtSet.addInsertSql(model_platform_walmart_dsv_dml);

        //prm_db.model_platform_aliexpress (速卖通平台)
        tableEnv.executeSql(model_platform_aliexpress_src);
        tableEnv.executeSql(model_platform_aliexpress_sink);
        stmtSet.addInsertSql(model_platform_aliexpress_dml);

        //prm_db.multiattr_model_aliexpress (速卖通多属性)
        tableEnv.executeSql(multiattr_model_aliexpress_src);
        tableEnv.executeSql(multiattr_model_aliexpress_sink);
        stmtSet.addInsertSql(multiattr_model_aliexpress_dml);

        //prm_db.combine_sku (组合sku主表)
        tableEnv.executeSql(combine_sku_src);
        tableEnv.executeSql(combine_sku_sink);
        stmtSet.addInsertSql(combine_sku_dml);

        //prm_db.combine_sku_attachment (组合sku从表)
        tableEnv.executeSql(combine_sku_attachment_src);
        tableEnv.executeSql(combine_sku_attachment_sink);
        stmtSet.addInsertSql(combine_sku_attachment_dml);

        //prm_db.combine_sku_history (组合sku历史数据表)
        tableEnv.executeSql(combine_sku_history_src);
        tableEnv.executeSql(combine_sku_history_sink);
        stmtSet.addInsertSql(combine_sku_history_dml);

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
