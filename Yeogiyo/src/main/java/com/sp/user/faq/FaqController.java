package com.sp.user.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("user.faqController")
public class FaqController {

	@RequestMapping(value="/user/faq/list")
	public String faqlist() {
		return ".user.faq.list";
	}
	
	
	@RequestMapping(value="/user/faq/created", method=RequestMethod.GET)
	public String faqcreatedForm() {
		return ".user.faq.created";
	}
	
}
