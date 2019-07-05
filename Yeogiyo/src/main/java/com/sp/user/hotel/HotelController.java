package com.sp.user.hotel;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("user.hotelController")
public class HotelController {
	
	@Autowired
	private HotelService service;
	
	//지역 검색
	@RequestMapping(value="/user/hotel/search")
	public String searchHotel() {
		return ".user.hotel.search";
	}
	
	// 호텔 리스트
	@RequestMapping(value="/user/hotel/list")
	public String hotelList(Model model) {
		//List<Hotel> list = service.listHotel(map);
		
		//model.addAttribute("list",list);
		return ".user.hotel.list";
	}
	
	
	// 호텔 상세보기
	@RequestMapping(value="/user/hotel/detail")
	public String ariticle(Model model) {
		
		//List<Hotel> details = service.detailHotel(map);
		
		//model.addAttribute("details", details);
		return ".user.hotel.detail";
	}
	
}
