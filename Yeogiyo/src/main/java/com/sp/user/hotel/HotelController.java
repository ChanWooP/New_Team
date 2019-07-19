package com.sp.user.hotel;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.user.member.SessionInfo;
import com.sp.user.wishlist.WishListService;

@Controller("user.hotelController")
public class HotelController {
	
	@Autowired
	private HotelService service;
	
	@Autowired
	private WishListService wishservice;
	
	// 호텔 리스트
	@RequestMapping(value="/user/hotel/list")
	public String hotelList(@RequestParam String checkinday,
			@RequestParam String checkoutday, @RequestParam int pnum, @RequestParam String place, HttpSession session, Model model) {
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("addr1", place);
		map.put("checkinday",checkinday);
		map.put("checkoutday", checkoutday);
		map.put("pnum",pnum);
		
		List<Hotel> list = service.listHotel(map);
		List<Hotel> idlist = null;
		if(info!=null)
			idlist=wishservice.checkuserIdlist(info.getUserId());
		
		model.addAttribute("list",list);
		model.addAttribute("idlist",idlist);
		
		model.addAttribute("checkinday",checkinday);
		model.addAttribute("checkoutday",checkoutday);	
		return ".user.hotel.list";
	}
	
	
	// 호텔 상세보기
	@RequestMapping(value="/user/hotel/detail")
	public String article(@RequestParam String hotelName, @RequestParam String checkinday, @RequestParam String checkoutday, Model model) {
				
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
		model.addAttribute("checkinday",checkinday);
		model.addAttribute("checkoutday",checkoutday);	
		return ".user.hotel.detail";
	}	
}
