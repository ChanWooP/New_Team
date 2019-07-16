package com.sp.user.reservation;

import java.util.Map;

public interface ReservationService {
	Reservation reservationdetail(int roomnum);
	int roomnum(Map<String, Object> map);
}
