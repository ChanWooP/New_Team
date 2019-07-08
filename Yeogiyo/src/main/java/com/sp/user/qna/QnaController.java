package com.sp.user.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("user.qnaController")
public class QnaController {

	@RequestMapping(value="/user/qna/list")
	public String qnalist() {
		return ".user.qna.list";
	}
	
	
	@RequestMapping(value="/user/qna/created", method=RequestMethod.GET)
	public String qnacreatedForm() {
		return ".user.qna.created";
	}
	
}
