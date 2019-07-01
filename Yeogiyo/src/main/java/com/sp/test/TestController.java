package com.sp.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping(value="/main/test")
	public String test() {
		return ".mainLayout";
	}
}
