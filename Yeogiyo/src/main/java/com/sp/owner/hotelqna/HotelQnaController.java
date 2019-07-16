package com.sp.owner.hotelqna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("owner.hotelqna.hotelQnaServiec")
public class HotelQnaController {
	
	@RequestMapping(value="/owner/hotelqna/list")
	public String list() {
		return ".owner.hotelqna.list";
	}
}
