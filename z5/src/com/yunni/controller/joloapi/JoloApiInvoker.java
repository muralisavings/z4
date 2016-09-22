package com.yunni.controller.joloapi;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import com.google.gson.Gson;
import com.yunni.controller.joloapi.vo.OperatorCircleResponseVO;

public class JoloApiInvoker {

	public String getOperatorAndCircleByMobileNumber(String mobileNo) throws Exception {
	      URL url = new URL("http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob="+mobileNo+"&type=json");
	      //InputStreamReader reader = new InputStreamReader(url.openStream());
	      InputStream is = url.openStream();
	      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
	      String jsonText = readAll(rd);
	     //OperatorCircleResponseVO operatorCircleResponseVO = new Gson().fromJson(reader, OperatorCircleResponseVO.class);
	      return jsonText;       
	  }
	
	 private String readAll(Reader rd) throws IOException {
	    StringBuilder sb = new StringBuilder();
	    int cp;
	    while ((cp = rd.read()) != -1) {
	      sb.append((char) cp);
	    }
	    return sb.toString();
	  }
}