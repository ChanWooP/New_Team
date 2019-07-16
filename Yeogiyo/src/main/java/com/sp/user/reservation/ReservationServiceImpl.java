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
			
			dto = dao.selectOne("showresdetail",roomnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int roomnum(Map<String, Object> map) {
		int roomnum=0;
		
		try {
			roomnum = dao.selectOne("getroomnum",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return roomnum;
	}

}
