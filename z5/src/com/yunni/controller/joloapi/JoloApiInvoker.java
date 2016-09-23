package com.yunni.controller.joloapi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import com.google.gson.Gson;
import com.yunni.controller.joloapi.constants.CircleCodes;
import com.yunni.controller.joloapi.constants.OperatorCodes;
import com.yunni.controller.joloapi.vo.OperatorCircleResponseVO;
import com.yunni.controller.util.MapUtil;

public class JoloApiInvoker {

	public String getOperatorAndCircleByMobileNumberDuP(String mobileNo) throws Exception {
	      URL url = new URL("http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob="+mobileNo+"&type=json");
	      InputStream is = url.openStream();
	      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
	      String jsonText = readAll(rd);
	      return jsonText;       
	  }
	

	  public OperatorCircleResponseVO getOperatorAndCircleByMobileNumber(String mobileNo) throws Exception {
	      URL url = new URL("http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob="+mobileNo+"&type=json");
	      InputStreamReader reader = new InputStreamReader(url.openStream());
	      OperatorCircleResponseVO operatorCircleResponseVO = new Gson().fromJson(reader, OperatorCircleResponseVO.class);
	      return  parseAndGetOperatorAndCircleNames(operatorCircleResponseVO);       
	  }
	  
	  public String getOperatorAndCircleByMobileNumber1(String mobileNo) throws Exception {
	      String result = JsonReader.readJsonFromUrl("http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob="+mobileNo+"&type=json");
	      return  result+" for http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob="+mobileNo+"&type=json";       
	  }
	  
	  public String getOfferInfo(String operatorName, String circleName ) throws Exception {
		  String operatorCode = MapUtil.getKey(OperatorCodes.operatorMap, operatorName);
		  String circleCode = MapUtil.getKey(CircleCodes.circleMap, circleName);
		  String result = JsonReader.readJsonArrayFromUrl("http://joloapi.com/api/findplan.php?userid=shivanyam&key=180714086798992&opt="+operatorCode+"&cir="+circleCode+"&type=json");
		  return result;
	  }
	
	 private String readAll(Reader rd) throws IOException {
	    StringBuilder sb = new StringBuilder();
	    int cp;
	    while ((cp = rd.read()) != -1) {
	      sb.append((char) cp);
	    }
	    return sb.toString();
	  }
	 
	 private OperatorCircleResponseVO parseAndGetOperatorAndCircleNames(OperatorCircleResponseVO operatorCircleResponseVO){
		 operatorCircleResponseVO.setCircle_name(CircleCodes.getCircleNameByCode(operatorCircleResponseVO.getCircle_code()));
		 operatorCircleResponseVO.setOperator_name(OperatorCodes.getOperatorNameByCode(operatorCircleResponseVO.getOperator_code()));
		 return operatorCircleResponseVO;
	 }
	 
}