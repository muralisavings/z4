package com.yunni.controller.joloapi;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONArray;
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
    String jsonText="";
    try {
      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
      jsonText = readAll(rd);
      JSONObject json = new JSONObject(jsonText);
      return json.toString();
    } catch(Exception e){
    	return "Updated(->"+jsonText+")"+e.getMessage();
    }
    finally {
      is.close();
    }
  }
  
  public String readJsonArrayFromUrl(String url) throws IOException, JSONException {
	    InputStream is = new URL(url).openStream();
	    String jsonText="";
	    try {
	      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
	      jsonText = readAll(rd);
	      if(isJSONValid(jsonText)){
	    	  return jsonText;  
	      } else{
	    	  return "[{\"Amount\" : \"-\" , \"Detail\": \""+jsonText+"\", \"Validity\": \"-\" }]";
	      }
	    } catch(Exception e){
	    	return e.getMessage();
	    }
	    finally {
	      is.close();
	    }
	  }
  
  private boolean isJSONValid(String test) {
	    try {
	        new JSONObject(test);
	    } catch (JSONException ex) {
	        // edited, to include @Arthur's comment
	        // e.g. in case JSONArray is valid as well...
	        try {
	            new JSONArray(test);
	        } catch (JSONException ex1) {
	            return false;
	        }
	    }
	    return true;
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
