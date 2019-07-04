package com.sp.user.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("user.member.memberController")
public class MemberController {
	
	@RequestMapping(value="/user/member/login", method=RequestMethod.GET)
	public String login() {
		return ".user.member.login";
	}
	
	@RequestMapping(value="/user/member/join", method=RequestMethod.GET)
	public String createdForm(Model model) {
		model.addAttribute("mode", "join");
		return ".user.member.member";
	}

}
