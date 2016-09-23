package com.yunni.controller.joloapi.constants;

import java.util.HashMap;
import java.util.Map;

public class OperatorCodes {
	static public Map<String, String> operatorMap = new HashMap<String, String>();
	static {
		operatorMap.put("28", "AIRTEL");
		operatorMap.put("1", "AIRCEL");
		operatorMap.put("3", "BSNL");
		operatorMap.put("22", "VODAFONE");
		operatorMap.put("17", "TATA DOCOMO GSM");
		operatorMap.put("18", "TATA DOCOMO CDMA");
		operatorMap.put("13", "RELIANCE GSM");
		operatorMap.put("12", "RELIANCE CDMA");
		operatorMap.put("10", "MTS");
		operatorMap.put("19", "UNINOR");
		operatorMap.put("9", "LOOP");
		operatorMap.put("5", "VIDEOCON");
		operatorMap.put("6", "MTNL MUMBAI");
		operatorMap.put("20", "MTNL DELHI");
		operatorMap.put("0", "NONE");
		operatorMap.put("8", "IDEA");
		operatorMap.put("17", "VIRGIN GSM");
		operatorMap.put("18", "VIRGIN CDMA");
		operatorMap.put("17", "T24");
	}
	public static String getOperatorNameByCode(String operator_code){
		return operatorMap.get(operator_code);
	}
}
