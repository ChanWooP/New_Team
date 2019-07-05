package com.sp.user.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("reservation.reservationController")
public class ReservationController {
	
	
	@RequestMapping(value="/user/reservation/reservation")
	public String reservate() {
		return ".user.reservation.reservation";
	}
}
