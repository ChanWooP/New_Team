package com.sp.owner.hotelqna;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;


@Service("owner.hotelqna.hotelQnaServiceImpl")
public class HotelQnaServiceImpl implements HotelQnaService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public void insertHotelQna(HotelQna dto, String pathname) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<HotelQna> listHotelQna(Map<String, Object> map) {
		List<HotelQna> list = null;
		
		try {
			list = dao.selectList("owner.hotelqna.selectHotelQna", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		try {
			result = dao.selectOne("owner.hotelqna.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void deleteHotelQna(int qnaNum) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public HotelQna readHotelQna(int qnaNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateHotelQna(HotelQna dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	

}
