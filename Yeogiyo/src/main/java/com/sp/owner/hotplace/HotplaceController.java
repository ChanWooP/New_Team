package com.sp.owner.hotplace;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("owner.hotplaceController")
public class HotplaceController {
	@RequestMapping(value="/owner/hotplace/list")
	public String list() {
		return ".owner.hotplace.list";
	}
	
	@RequestMapping(value="/owner/hotplace/created", method=RequestMethod.GET)
	public String createForm(Model model) throws Exception {
		model.addAttribute("mode","created");
		model.addAttribute("subject","명소추가");
		return ".owner.hotplace.created";
	}
	
	@RequestMapping(value="/owner/hotplace/created", method=RequestMethod.POST)
	public String createSubmit(Hotplace dto, HttpSession session) throws Exception{
		
		//세션 처리 해줘야함 호텔 아이디 나중에 수정
		
		try {
			String root = session.getServletContext().getRealPath("/");
			String pathname = root + "uploads"+ File.separator + "hotplace";
			
			//세션 처리 해줘야함 호텔 아이디 나중에 수정
			dto.setHotelId("hotel1");
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "redirect:/owner/hotplace/list";
	}
}
