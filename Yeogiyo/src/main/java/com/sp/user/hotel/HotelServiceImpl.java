package com.sp.user.hotel;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("user.hotel.HotelService")
public class HotelServiceImpl implements HotelService{
	
	@Autowired
	private CommonDAO dao;

	@Override
	public Hotel detailHotel(Map<String, Object> map) {
		Hotel dto = null;
		try {
			dto = dao.selectOne("user.hotel.hotelDetail", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public List<Hotel> listHotel(Map<String, Object> map) {
		List<Hotel> list = null;
		try {
			list=dao.selectList("user.hotel.hotelList", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Hotel> listPhoto(Map<String, Object> map) {
		List<Hotel> plist = null;
		try {
			plist=dao.selectList("user.hotel.hotelPhoto",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return plist;
	}

	@Override
	public List<Hotel> listHotelRoom(Map<String, Object> map) {
		List<Hotel> rlist = null;
		try {
			rlist=dao.selectList("user.hotel.hotelRoomList", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rlist;
	}

}
