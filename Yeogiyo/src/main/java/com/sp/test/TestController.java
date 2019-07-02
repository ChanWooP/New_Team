package com.sp.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("test.testController")
public class TestController {
	
	@RequestMapping(value="/user/main", method=RequestMethod.GET)
	public String test() {
		return ".userLayout";
	}
}
