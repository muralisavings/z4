package com.yunni.controller.joloapi;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.yunni.controller.joloapi.vo.OperatorCircleResponseVO;

public class JsonReader {

  private static String readAll(Reader rd) throws IOException {
    StringBuilder sb = new StringBuilder();
    int cp;
    while ((cp = rd.read()) != -1) {
      sb.append((char) cp);
    }
    return sb.toString();
  }

  public static String readJsonFromUrl(String url) throws IOException, JSONException {
    InputStream is = new URL(url).openStream();
    try {
      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
      String jsonText = readAll(rd);
      JSONObject json = new JSONObject(jsonText);
      return json.toString();
    } finally {
      is.close();
    }
  }
  
  private static String readUrl(String urlString) throws Exception {
	    BufferedReader reader = null;
	    try {
	        URL url = new URL(urlString);
	        reader = new BufferedReader(new InputStreamReader(url.openStream()));
	        StringBuffer buffer = new StringBuffer();
	        int read;
	        char[] chars = new char[1024];
	        while ((read = reader.read(chars)) != -1)
	            buffer.append(chars, 0, read); 

	        return buffer.toString();
	    } finally {
	        if (reader != null)
	            reader.close();
	    }
	}
  
  public OperatorCircleResponseVO getOperatorAndCircleByMobileNumber(String mobileNo) throws Exception {
      URL url = new URL("http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob="+mobileNo+"&type=json");
      InputStreamReader reader = new InputStreamReader(url.openStream());
      OperatorCircleResponseVO operatorCircleResponseVO = new Gson().fromJson(reader, OperatorCircleResponseVO.class);
      return operatorCircleResponseVO;       
  }
}
