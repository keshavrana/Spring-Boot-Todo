package com.learn.learning;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {
	@RequestMapping("/record")
	public List<Course> retiveData() {
		return Arrays.asList(new Course(1, "Boss Kessasahav"), new Course(2, "Rana"));
	}
}
