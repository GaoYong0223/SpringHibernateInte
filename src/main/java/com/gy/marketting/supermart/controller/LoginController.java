package com.gy.marketting.supermart.controller;

import java.security.Principal;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gy.marketting.supermart.entity.User;
 
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
 
	@RequestMapping(value="/welcome", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal ) {
        logger.debug("{} is called by user {}","printWelcome", principal.getName() );
		String name = principal.getName();
		model.addAttribute("username", name);
		model.addAttribute("message", "Thanks for login, welcome");
		return "hello";
 
	}
	
	@RequestMapping("/index")
	public String listContacts(ModelMap model, Principal principal) {
		logger.debug("listContacts");
		model.get("name");
		return "/pub/index";
	}
 
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		logger.debug("{} is called by user","login" );
		return "/pub/login";
 
	}
 
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
 
		model.addAttribute("error", "true");
		return "/pub/login";
 
	}
 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		
		return "/pub/index";
 
	}
	
	@RequestMapping(value="/header", method = RequestMethod.GET)
	public String requestHeader(ModelMap model) {
		
		return "pub/header";
 
	}
	
	@RequestMapping(value="/registration", method = RequestMethod.GET)
	public String registration(ModelMap model) {
		
		return "pub/registration";
 
	}
	
	@RequestMapping(value="/registration-thankyou", method = RequestMethod.GET)
	public String thankyou(ModelMap model) {
		
		return "pub/registration-thankyou";
 
	}
	
	@RequestMapping(value="/registrationform", method = RequestMethod.POST)
	public String registrationForm(@RequestParam("registType") String type, ModelMap model) {
		logger.debug("registrationForm type: {}", type);
		model.addAttribute("user", new User());
		if(type!=null && type.equals("marketer")){
			return "pub/registration-marketers";
		}else if(type!=null && type.equals("talent")){
			return "pub/registration-talents";
		}else{
			return "pub/registration";
		}
 
	}
 
}