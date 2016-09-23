package com.yunni.controller.util;

import java.util.Map;

public class MapUtil {
	 public static String getKey(Map<String, String> map, String value) {
	        String key = null;
	        for(Map.Entry<String, String> entry : map.entrySet()) {
	            if((value == null && entry.getValue() == null) || (value != null && value.equals(entry.getValue()))) {
	                key = entry.getKey();
	                break;
	            }
	        }
	        return key;
	    }

}
