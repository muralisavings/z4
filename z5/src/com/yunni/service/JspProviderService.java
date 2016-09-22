package com.yunni.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller
@RequestMapping("/")
public class JspProviderService {
	 @RequestMapping(method = RequestMethod.GET)
	   public String getMainPage(ModelMap model) {
	      return "starter";
	   }
}
