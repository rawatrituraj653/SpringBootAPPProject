package com.uidai.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uidai.user.model.User;
@Controller
public class UserController {

	@RequestMapping(value="/getForm")
	public String getRegForm(Model model) {
		User userObj=new User(); 
		model.addAttribute("user", userObj);
		return "registerUser";
	}
	
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	public String getUserData(@ModelAttribute("user") User user,Model model) {
		
		System.out.println(user);
		model.addAttribute("user", new User());
		model.addAttribute("msg", "Registration Successfull......");
		return "registerUser";
	}
	
}
