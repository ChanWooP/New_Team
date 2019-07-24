package com.sp.user.reservation;

import java.util.Map;

public interface ReservationService {
	public Reservation reservationdetail(int roomnum);
	public int roomnum(Map<String, Object> map);
	public int reservationNum();
	
	public void insertReservation(Map<String, Object> map) throws Exception;
	public void nomeminsertReservation(Map<String, Object> map) throws Exception;
	
	public String gethotelname(Map<String, Object> map);
}
