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
 * 商品中心(肖子康、周魁提供)    rm-uf6089n47f72qczn835970.mysql.rds.aliyuncs.com
 * vevor_evolution.view_goods_sku_basic_info(商品基础表)
 * vevor_evolution.view_goods_sku_basic_info_main(商品主sku表)
 * vevor_evolution.view_goods_package_info(商品包装尺寸表)
 * vevor_evolution.view_goods_custom_clearance_info(商品报关属性表)
 * vevor_evolution.auth_goods_group(商品小组表)
 * vevor_evolution.view_goods_upc_info(商品upc表)
 * vevor_evolution.conf_spu(商品spu表)
 * vevor_evolution.view_goods_unpacking_info(商品拆包表)
 * mysql -ureadonly  -p'7RNz8iz#PfRDz#ULnqIHRTNQ' -h rm-uf6089n47f72qczn8xo.mysql.rds.aliyuncs.com -P 3306 -D prm_db
 *
 * @author sangyu
 */
@Component("cdc_vevor_evolution_db")
@Slf4j
public class CdcVevorEvolutionDbHandler extends Tools {


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

        //vevor_evolution.view_goods_sku_basic_info(商品基础表)
        tableEnv.executeSql(view_goods_sku_basic_info_src);
        tableEnv.executeSql(view_goods_sku_basic_info_sink);
        stmtSet.addInsertSql(view_goods_sku_basic_info_dml);

        //vevor_evolution.view_goods_sku_basic_info_main(商品主sku表)
        tableEnv.executeSql(view_goods_sku_basic_info_main_src);
        tableEnv.executeSql(view_goods_sku_basic_info_main_sink);
        stmtSet.addInsertSql(view_goods_sku_basic_info_main_dml);

        //vevor_evolution.view_goods_package_info(商品包装尺寸表)
        tableEnv.executeSql(view_goods_package_info_src);
        tableEnv.executeSql(view_goods_package_info_sink);
        stmtSet.addInsertSql(view_goods_package_info_dml);

        //vevor_evolution.view_goods_custom_clearance_info(商品报关属性表)
        tableEnv.executeSql(view_goods_custom_clearance_info_src);
        tableEnv.executeSql(view_goods_custom_clearance_info_sink);
        stmtSet.addInsertSql(view_goods_custom_clearance_info_dml);

        //vevor_evolution.auth_goods_group(商品小组表)
        tableEnv.executeSql(auth_goods_group_src);
        tableEnv.executeSql(auth_goods_group_sink);
        stmtSet.addInsertSql(auth_goods_group_dml);

        //vevor_evolution.view_goods_upc_info(商品upc表)
        tableEnv.executeSql(view_goods_upc_info_src);
        tableEnv.executeSql(view_goods_upc_info_sink);
        stmtSet.addInsertSql(view_goods_upc_info_dml);

        //vevor_evolution.conf_spu(商品spu表)
        tableEnv.executeSql(conf_spu_src);
        tableEnv.executeSql(conf_spu_sink);
        stmtSet.addInsertSql(conf_spu_dml);

        //vevor_evolution.view_goods_unpacking_info(商品拆包表)
        tableEnv.executeSql(view_goods_unpacking_info_src);
        tableEnv.executeSql(view_goods_unpacking_info_sink);
        stmtSet.addInsertSql(view_goods_unpacking_info_dml);


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
