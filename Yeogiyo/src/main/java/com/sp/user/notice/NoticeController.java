package com.sp.user.notice;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("user.notice.noticeController")
public class NoticeController {

	@RequestMapping(value="/user/notice/list")
	public String noticeList() {
		
		
		return ".user.notice.list";
	}
	
	@RequestMapping(value="/user/notice/created", method=RequestMethod.GET)
	public String noticecreatedForm(Model model) {
		model.addAttribute("mode", "created");
		
		return ".user.notice.created";
	}
}
