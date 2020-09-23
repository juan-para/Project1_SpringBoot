package com.springboot.firstproject.web.firstprojectweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

//	localhost:8080/login?name=John
	@RequestMapping("/login")
	public String loginMessage(@RequestParam String name, ModelMap model) {
		model.put("name", name);
		return "login";
	}
}
