package com.sp.user.reservation;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("user.reservation.reservationService")
public class ReservationServiceImpl implements ReservationService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public Reservation reservationdetail(int roomnum) {
		Reservation dto=null;
		
		try {
			
			dto = dao.selectOne("user.reservation.showresdetail",roomnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int roomnum(Map<String, Object> map) {
		int roomnum=0;
		
		try {
			roomnum = dao.selectOne("user.reservation.getroomnum",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomnum;
	}

	@Override
	public void insertReservation(Map<String, Object> map) throws Exception {
		try {
			dao.updateData("user.reservation.insertReservation", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public int reservationNum() {
		int num=0;
		try {
			num=dao.selectOne("user.reservation.getReservationNum");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}

}
