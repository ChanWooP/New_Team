package com.sp.owner.hotplace;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("owner.hotplaceController")
public class HotplaceController {
	@RequestMapping(value="/owner/hotplace/list")
	public String list() {
		return ".owner.hotplace.list";
	}
	
}
