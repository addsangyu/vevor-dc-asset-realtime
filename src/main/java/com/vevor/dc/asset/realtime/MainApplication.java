package com.vevor.dc.asset.realtime;

import com.vevor.dc.asset.realtime.tools.Tools;
import org.apache.flink.api.java.utils.ParameterTool;
import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

//-Dhome.dir=D:\IdeaWorkSpace2\dataware\flink_job\realtime-flink-supply-share\src\main\resources\conf\earning-uat.properties
@SpringBootApplication
public class MainApplication {

    private static Logger logger = LoggerFactory.getLogger(MainApplication.class);
    public static ConfigurableApplicationContext context;

    public static void main(String[] args) {
        context = SpringApplication.run(MainApplication.class, args);
        String appName = args[0];

        String[] otherArgs = getAppArgs(args);

        String homeDir = System.getProperty("home.dir");
        System.out.println("-->项目目录:"+homeDir+",启动应用:"+appName);
        ParameterTool parameterTool = initArgsPara(otherArgs);

        parameterTool = initConfigPara(parameterTool);

        Map<String,String> project_name = new HashMap<>();
        project_name.put("project_name",appName);

        ParameterTool projectParameterTool = ParameterTool.fromMap(project_name);

        parameterTool = parameterTool.mergeWith(projectParameterTool);

        Properties poperties = parameterTool.getProperties();
        for (String key : poperties.stringPropertyNames()  ){
            System.out.println("-->运行提交 config 参数 -----> " + key + ":" + poperties.getProperty(key));
        }

        StreamExecutionEnvironment env = StreamExecutionEnvironment.getExecutionEnvironment();
        env.getConfig().setGlobalJobParameters(parameterTool);
        try {
            Tools app = (Tools) context.getBean(appName);
            app.init(otherArgs);
            app.run(env, otherArgs);
            env.execute(appName);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String[] getAppArgs(String[] args) {
        if (args.length > 1) {
            String[] appArgs = new String[args.length - 1];
            System.arraycopy(args, 1, appArgs, 0, args.length - 1);
            return appArgs;
        } else {
            return null;
        }
    }

    private static ParameterTool initConfigPara(ParameterTool parameterTool){
        String fileFullDir = System.getProperty("home.dir");
//        String configFile = homeDir+File.separator+"conf/config_oms_detail.properties";
        ParameterTool confParameterTool = null;
        try {
            confParameterTool = ParameterTool.fromPropertiesFile(new File(fileFullDir));
            } catch (IOException e) {
            logger.error("记载配置文件异常--》path：{}，exit！",fileFullDir,e);
            System.exit(-1);
        }
        if(parameterTool != null){
            confParameterTool = confParameterTool.mergeWith(parameterTool);
        }
        return confParameterTool;
    }

    private static ParameterTool initArgsPara(String args[]){
        ParameterTool parameterTool = null;
        if(args !=null && args.length>0){
            parameterTool = ParameterTool.fromArgs(args);
        }
        return parameterTool;
    }

}
