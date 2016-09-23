package com.yunni.controller.joloapi.constants;

import java.util.HashMap;
import java.util.Map;

public class CircleCodes {
	static public Map<String, String> circleMap = new HashMap<String, String>();
	static {
		circleMap.put("5", "Andhra Pradesh");
		circleMap.put("19", "Assam");
		circleMap.put("17", "Bihar & Jharkhand");
		circleMap.put("23", "Chennai");
		circleMap.put("1", "Delhi/NCR");
		circleMap.put("8", "Gujarat");
		circleMap.put("16", "Haryana");
		circleMap.put("21", "Himachal Pradesh");
		circleMap.put("22", "Jammu & Kashmir");
		circleMap.put("7", "Karnataka");
		circleMap.put("14", "Kerala");
		circleMap.put("3", "Kolkata");
		circleMap.put("2", "Mumbai");
		circleMap.put("20", "North East");
		circleMap.put("18", "Orissa");
		circleMap.put("15", "Punjab");
		circleMap.put("13", "Rajasthan");
		circleMap.put("6", "Tamil Nadu");
		circleMap.put("9", "Uttar Pradesh (E)");
		circleMap.put("11", "Uttar Pradesh (W)");
		circleMap.put("12", "West Bengal");
		circleMap.put("4", "Maharashtra");
		circleMap.put("10", "Madhya Pradesh");
		circleMap.put("0", "None");
	}
	public static String getCircleNameByCode(String circle_code){
		return circleMap.get(circle_code);
	}
}
