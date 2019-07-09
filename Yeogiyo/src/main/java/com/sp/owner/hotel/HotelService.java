package com.sp.owner.hotel;

public interface HotelService {
	public Hotel selectHotel(Hotel hotel) throws Exception;
	public void insertHotel(Hotel hotel) throws Exception;
	public void updateHotel(Hotel hotel) throws Exception;
	public void deleteHotel(Hotel hotel) throws Exception;
}
