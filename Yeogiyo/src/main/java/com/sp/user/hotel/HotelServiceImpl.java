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
	public List<Hotel> detailHotel(Map<String, Object> map) {
		List<Hotel> details = null;
		try {
			details = dao.selectList("hotelDetail", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return details;
	}

	@Override
	public List<Hotel> listHotel(Map<String, Object> map) {
		List<Hotel> list = null;
		try {
			dao.selectList("hotelList", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
