package com.sp.user.reservation;

import java.util.List;
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
	public void nomeminsertReservation(Map<String, Object> map) throws Exception {
		try {
			dao.updateData("user.reservation.noMemberinsertReservation",map);
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}		
	}

	@Override
	public String gethotelname(Map<String, Object> map) {
		String hotelName = null;
		try {
			hotelName=dao.selectOne("user.reservation.selectHotelName",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return hotelName;
	}

	@Override
	public List<Reservation> optadd(Map<String, Object> map) throws Exception {
		List<Reservation> list = null;
		list=dao.selectList("user.reservation.addoptPrice",map);
		return list;
	}

	@Override
	public void addinsertReservation(Map<String, Object> map) throws Exception {
		try {
			dao.updateData("user.reservation.addinsertReservation", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void addnomeminsertReservation(Map<String, Object> map) throws Exception {
		try {
			dao.updateData("user.reservation.addnoMemberinsertReservation",map);
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}	
		
	}
}
