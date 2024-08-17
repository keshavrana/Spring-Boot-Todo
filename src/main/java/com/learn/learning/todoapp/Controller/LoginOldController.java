package com.learn.learning.todoapp.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.learn.learning.Services.LoginAuth;

@SessionAttributes("name")
public class LoginOldController {

	private LoginAuth loginauth;

	public LoginOldController(LoginAuth loginauth) {
		this.loginauth = loginauth;
	}

	// @GetMapping("/")
	public String login() {
		return "login";
	}

	// @PostMapping("/login")
	public String logincheck(@RequestParam String name, String password, ModelMap model) {
		if (loginauth.authentication(name, password)) {
			model.addAttribute("name", name);
			return "redirect:/todo-list";
		} else {
			model.addAttribute("error", "Invalid Crendential");
			return "redirect:/";
		}
	}
}
