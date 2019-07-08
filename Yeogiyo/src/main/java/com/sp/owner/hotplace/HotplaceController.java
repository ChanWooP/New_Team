package com.sp.owner.hotplace;

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
		return ".owner.hotplace.created";
	}
}
