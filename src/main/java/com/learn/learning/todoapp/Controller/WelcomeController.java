package com.learn.learning.todoapp.Controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class WelcomeController {
	@GetMapping("/")
	public String welcomePage(ModelMap model) {
		model.put("name", getLoginUserName());
		return "welcome";
	}

	private String getLoginUserName() {
		Authentication auth= SecurityContextHolder.getContext().getAuthentication();
		return auth.getName();
	}
	
	
}
