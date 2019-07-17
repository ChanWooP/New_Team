package com.sp.user.reservation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("reservation.reservationController")
public class ReservationController {
		
	@Autowired
	private ReservationService service;
	
	@RequestMapping(value="/user/reservation/reservation", method=RequestMethod.POST)
	public String reservate(@RequestParam String hotelId, @RequestParam String roomtype, @RequestParam int roomprice,
			@RequestParam int maxpeople, @RequestParam String roomdetails,@RequestParam String checkinday, @RequestParam String checkoutday, Model model) {
		
		Map<String, Object> map = new HashMap<>();
		int roomnum=0;
		Reservation resdetail = null;
		map.put("hotelId", hotelId);
		map.put("roomtype", roomtype);
		map.put("roomprice", roomprice);
		map.put("roomdetails", roomdetails);
		map.put("maxpeople", maxpeople);
		map.put("roomstatus", "예약가능");
		
		roomnum = service.roomnum(map);
		
		resdetail=service.reservationdetail(roomnum);
		
		model.addAttribute("resdetail",resdetail);
		model.addAttribute("checkinday",checkinday);
		model.addAttribute("checkoutday",checkoutday);	
		
		return ".user.reservation.reservation";
	}
	
	@RequestMapping(value="/user/reservation/complete")
	public String complete() {
		return ".user.reservation.reserveComplete";
	}
}
