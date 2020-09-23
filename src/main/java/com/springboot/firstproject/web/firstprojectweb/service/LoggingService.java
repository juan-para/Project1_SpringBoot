package com.springboot.firstproject.web.firstprojectweb.service;

import org.springframework.stereotype.Component;

@Component
public class LoggingService {
//This class could be an interface. When implementing we can choose what to do. e.g.: database connection, business logic.
	
	public boolean validateUser (String userid, String password) {
//		admin, admin123
		return userid.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin123");
	}
	
}
