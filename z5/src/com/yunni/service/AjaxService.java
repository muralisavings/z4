package com.yunni.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yunni.controller.joloapi.JoloApiInvoker;

@Controller
@RequestMapping("/ajaxservice")
public class AjaxService {
	 @RequestMapping("/geMobileInfo")
		protected @ResponseBody String getLanguageList(){
		   // Gson gson = new Gson();
		 JoloApiInvoker joloApiInvoker = new JoloApiInvoker();
		 String s=joloApiInvoker.getJsonData("http://joloapi.com/api/findoperator.php?userid=shivanyam&key=180714086798992&mob=8438100844&type=json");
		    return s;
		}
}
