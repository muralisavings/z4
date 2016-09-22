package com.yunni.controller.joloapi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import com.google.gson.Gson;

public class JoloApiInvoker {

	// http://localhost:8080/RESTfulExample/json/product/post
	public String getJsonData(String apiUrl) {
	  try {

		URL url = new URL(apiUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setDoOutput(true);
		conn.setRequestMethod("GET");
		//conn.setRequestProperty("Content-Type", "application/json");

//		String input = "{\"qty\":100,\"name\":\"iPad 4\"}";
//
//		OutputStream os = conn.getOutputStream();
//		os.write(input.getBytes());
//		os.flush();
//
//		if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) {
//			throw new RuntimeException("Failed : HTTP error code : "
//				+ conn.getResponseCode());
//		}

		/*BufferedReader br = new BufferedReader(new InputStreamReader(
				(conn.getInputStream())));

		String output;
		StringBuffer stringBuffer = new StringBuffer();
		System.out.println("Output from Server .... \n");
		while ((output = br.readLine()) != null) {
			System.out.println(output);
			stringBuffer.append(output);
		}
		
		conn.disconnect();
		
*/
	  } catch (MalformedURLException e) {

		e.printStackTrace();

	  } catch (IOException e) {

		e.printStackTrace();

	 }
	return apiUrl;

	}

}