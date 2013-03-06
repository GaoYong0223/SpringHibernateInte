package com.gy.marketting.supermart.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.Map;


import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gy.marketting.supermart.entity.User;
import com.gy.marketting.supermart.service.ContactService;

@Controller
public class UserController {

	@Autowired
	private ContactService contactService;
	
	
	private Logger logger = LoggerFactory.getLogger(UserController.class) ;

	
	

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact")
	User contact, BindingResult result) {

		contactService.addContact(contact);

		return "redirect:/index";
	}
	
	
	
	@RequestMapping(value = "/registrationmarketer", method = RequestMethod.POST)
	public String addMarketer(@ModelAttribute("user")
	User contact, BindingResult result, @RequestParam("confirmpassword") String confirmPassword, ModelMap model) {
		logger.debug("CONFIRM PASSWORD: {}", confirmPassword);
		if(confirmPassword==null || !confirmPassword.equals(contact.getPassword())){
			logger.debug("Different user password entered.");
		}
		
		model.addAttribute("user", contact);
		model.addAttribute("username", contact.getUsername());
		
		return "/pub/registration-marketers-more";
	}
	
	@RequestMapping(value = "/registrationmarketertest", method = RequestMethod.POST)
	public String addMarketerTest(final @ModelAttribute("user")
	User contact, BindingResult result, @RequestParam("step") String step, ModelMap model) {
		logger.debug("CONFIRM PASSWORD: {}", step);
		/*if(confirmPassword==null || !confirmPassword.equals(contact.getPassword())){
			logger.debug("Different user password entered.");
		}*/
		contact.setRole("MARKETER");
		//contactService.addContact(contact);
		
		model.addAttribute("user", contact);
		model.addAttribute("username", contact.getUsername());
		
		if(step.equals("1")){
			return "/pub/registration-marketers-more";
		}else{
			return "/pub/registration-thankyou";
		}
	}
	
	
	@RequestMapping(value = "/registration-talents", method = RequestMethod.POST)
	public String addTalent(@ModelAttribute("user")
	User contact, BindingResult result, @RequestParam("confirmpassword") String confirmPassword, ModelMap model) {
		logger.debug("CONFIRM PASSWORD: {}", confirmPassword);
		if(confirmPassword==null || !confirmPassword.equals(contact.getPassword())){
			logger.debug("Different user password entered.");
		}
		contact.setRole("TALENT");
		contactService.addContact(contact);
		
		model.addAttribute("user", contact);
		model.addAttribute("username", contact.getUsername());
		
		return "/pub/registration-talents-more";
	}
	
	@RequestMapping(value = "/registrationsuccess", method = RequestMethod.POST)
	public String addMarketerStep2(@ModelAttribute("user")
	User user, BindingResult result,  @RequestParam("resume") MultipartFile resume, ModelMap model) {
		logger.debug("addMarketerStep2");
		
		user.setRole("MARKETER");
		try {
			user.setResume(Hibernate.createBlob(resume.getInputStream()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		contactService.addContact(user);

		model.addAttribute("username", user.getUsername());
		
		return "/pub/registration-thankyou";
	}
	
	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId")
	Integer contactId) {

		contactService.removeContact(contactId);

		return "redirect:/index";
	}
}
