package com.sp.user.faq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.user.member.SessionInfo;

@Controller("user.faqController")
public class FaqController {
	
	@Autowired
	private FaqService service;
	
	@RequestMapping(value="/user/faq/list")
	public String faqlist(Model model) {
		List<Faq> list=service.listFaq();
		model.addAttribute("list", list);
		return ".user.faq.list";
	}
	
	
	@RequestMapping(value="/user/faq/created", method=RequestMethod.GET)
	public String faqcreatedForm(HttpSession session, Model model) {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(! info.getUserId().equals("admin")) {
			return "redirect:/user/faq/list";
		}
		model.addAttribute("mode", "created");
		return ".user.faq.created";
	}
	
	@RequestMapping(value="/user/faq/created", method=RequestMethod.POST)
	public String faqcreatedSubmit(Faq dto) {
		try {
			service.insertFaq(dto);
		} catch (Exception e) {
		}
		return "redirect:/user/faq/list";
	}
	
	@RequestMapping(value="/user/faq/update", method=RequestMethod.GET)
	public String faqupdateForm(@RequestParam int faqNum,
								HttpSession session, Model model) {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(! info.getUserId().equals("admin")) {
			return "redirect:/user/faq/list";
		}
		
		Faq dto=service.readFaq(faqNum);
		if(dto==null) {
			return "redirect:/user/faq/list";
		}
		
		model.addAttribute("mode", "update");
		model.addAttribute("dto", dto);
		
		return ".user.faq.created";
	}
	
	@RequestMapping(value="/user/faq/update", method=RequestMethod.POST)
	public String faqupdateSubmit(Faq dto, HttpSession session) {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		if(! info.getUserId().equals("admin")) {
			return "redirect:/user/faq/list";
		}
		try {
			service.updateFaq(dto);
		} catch (Exception e) {
		}
		return "redirect:/user/faq/list";
	}
	
	@RequestMapping(value="/user/faq/delete")
	@ResponseBody
	public Map<String, Object> deleteFaq(@RequestParam int faqNum) throws Exception {
		Map<String, Object> model=new HashMap<>();
		try {
			model.put("state", "true");
			service.deleteFaq(faqNum);
		} catch (Exception e) {
			model.put("state", "false");
		}
		return model;
	}
	
	@RequestMapping(value="/user/faq/content")
	@ResponseBody
	public Map<String, Object> faqContent(@RequestParam int faqNum) throws Exception {
		Faq dto=service.readFaq(faqNum);
		dto.setFaqContent(dto.getFaqContent().replaceAll("\n", "<br>"));
		
		String content=dto.getFaqContent();
		
		Map<String, Object> model=new HashMap<>();
		model.put("content", content);
		
		return model;
	}
	
}
