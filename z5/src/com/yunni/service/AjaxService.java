package com.yunni.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yunni.controller.joloapi.JoloApiInvoker;
import com.yunni.controller.joloapi.vo.OperatorCircleResponseVO;

@Controller
@RequestMapping("/ajaxservice")
public class AjaxService {
	Gson gson = new Gson(); 
	 @RequestMapping(value = "/geMobileInfo",  method=RequestMethod.GET)
		protected @ResponseBody String getOperatorAndCircleByMobileNumber(HttpServletRequest request){
		 try {
		 String mobileNumber = request.getParameter("mobileNumber");
		 JoloApiInvoker joloApiInvoker = new JoloApiInvoker();
		 OperatorCircleResponseVO operatorCircleResponseVO = joloApiInvoker.getOperatorAndCircleByMobileNumber(mobileNumber);
	 	 return gson.toJson(operatorCircleResponseVO);
		} catch (Exception e) {
			return e.getMessage();
		}
	}
	 
	 @RequestMapping(value = "/getOfferInfo",  method=RequestMethod.GET)
		protected @ResponseBody String getOfferInfo(HttpServletRequest request) {
		 try {
		 String operatorName = request.getParameter("operatorName");
		 String circleName = request.getParameter("circleName");
		 JoloApiInvoker joloApiInvoker = new JoloApiInvoker();
		 String result = joloApiInvoker.getOfferInfo(operatorName, circleName);
		 result =  "{ \"records\":"+result+"}";
		 return result;
		} catch (Exception e) {
			return e.getMessage();
		}
	}
}
