package com.learn.learning.Services;

import org.springframework.stereotype.Service;

@Service
public class LoginAuth {

	public boolean authentication(String name, String password) {
		if (name.equals("keshav") && password.equals("pass")) {
			return true;
		} else {
			return false;
		}
	}
}
