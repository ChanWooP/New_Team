package com.sp.user.reservation;

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

import com.sp.user.member.SessionInfo;

@Controller("reservation.reservationController")
public class ReservationController {
		
	@Autowired
	private ReservationService service;
	
	@RequestMapping(value="/user/reservation/reservation", method=RequestMethod.POST)
	public String reservate(@RequestParam String hotelId, @RequestParam String roomtype, @RequestParam int roomprice,
			@RequestParam int maxpeople, @RequestParam String roomdetails,@RequestParam String checkinday, @RequestParam String checkoutday
			, @RequestParam int peoplecount, @RequestParam int optNum, @RequestParam int optCount, Model model) {
		
		Map<String, Object> map = new HashMap<>();
		List<Reservation> optlist = null;
		int roomnum=0;
		
		Reservation resdetail = null;
		
		map.put("hotelId", hotelId);
		map.put("roomtype", roomtype);
		map.put("roomprice", roomprice);
		map.put("roomdetails", roomdetails);
		map.put("maxpeople", maxpeople);
		map.put("roomstatus", "예약가능");
		map.put("checkinday", checkinday);
		map.put("checkoutday", checkoutday);
		map.put("optNum", optNum);
		map.put("optCount", optCount);
		
		try {
			roomnum = service.roomnum(map);
			resdetail=service.reservationdetail(roomnum);
			optlist=service.optadd(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("hotelId",hotelId);
		model.addAttribute("resdetail",resdetail);
		model.addAttribute("checkinday",checkinday);
		model.addAttribute("checkoutday",checkoutday);	
		model.addAttribute("peoplecount", peoplecount);
		model.addAttribute("roomnum", roomnum);
		model.addAttribute("optlist", optlist);
		model.addAttribute("optCount", optCount);
		
		return ".user.reservation.reservation";
	}
	
	@RequestMapping(value="/user/reservation/complete")
	public String complete(@RequestParam Map<String, Object> map, HttpSession session, Model model) {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String hotelName = service.gethotelname(map);
		try {
			if(info !=null) {
				String userId = info.getUserId();
				map.put("userId", userId);
				service.insertReservation(map);
			} else { 
				service.nomeminsertReservation(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("map",map);
		model.addAttribute("hotelName",hotelName);		
		return ".user.reservation.reserveComplete";
	}
}
