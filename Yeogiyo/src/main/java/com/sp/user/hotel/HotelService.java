package com.sp.user.hotel;

import java.util.List;
import java.util.Map;

public interface HotelService {
	public List<Hotel> detailHotel(Map<String, Object> map);
	public List<Hotel> listHotel(Map<String, Object> map);
}