package com.sp.user.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("user.faq.faqController")
public class FaqController {
	
	@Autowired
	private FaqService service;
	
	@RequestMapping(value="/user/faq/list")
	public String faqlist(Model model) {
		List<Faq> list=service.listFaq();
		model.addAttribute("list", list);
		return ".user.faq.list";
	}
}

