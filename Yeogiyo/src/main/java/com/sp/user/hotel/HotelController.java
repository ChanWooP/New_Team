package com.sp.user.hotel;

import java.util.HashMap;
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
	
	// 호텔 리스트
	@RequestMapping(value="/user/hotel/list")
	public String hotelList( @RequestParam String checkinday,
			@RequestParam String checkoutday, @RequestParam int pnum, @RequestParam String place,Model model) {
		Map<String, Object> map = new HashMap<>();
		map.put("addr1", place);
		map.put("checkinday",checkinday);
		map.put("checkoutday", checkoutday);
		map.put("pnum",pnum);
		
		List<Hotel> list = service.listHotel(map);
		
		model.addAttribute("list",list);
		return ".user.hotel.list";
	}
	
	
	// 호텔 상세보기
	@RequestMapping(value="/user/hotel/detail")
	public String article(@RequestParam String hotelName,Model model) {
				
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> maps = new HashMap<>();
		Map<String, Object> rmap = new HashMap<>();
		
		map.put("hotelName", hotelName);
		maps.put("hotelName", hotelName);
		rmap.put("hotelName", hotelName);
		
		Hotel detail = service.detailHotel(map);
		List<Hotel> plist = service.listPhoto(maps);
		List<Hotel> rlist = service.listHotelRoom(rmap);
					
		model.addAttribute("detail", detail);
		model.addAttribute("plist",plist);
		model.addAttribute("rlist", rlist);
			
		return ".user.hotel.detail";
	}	
}
