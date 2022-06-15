package com.vevor.dc.asset.realtime.tools;

import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;

public abstract class Tools {

	public boolean init(String[] args) {
		return true;
	};
	public abstract int run(StreamExecutionEnvironment env,String[] args) throws Exception;
}
