package com.sp.owner.hotel;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("owner.hotel.hotelService")
public class HotelServiceImpl implements HotelService {

	@Autowired
	private CommonDAO dao;

	@Override
	public Hotel selectAll(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dto = dao.selectOne("selectAll", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return dto;
	}

	@Override
	public Hotel selectHotel(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dto = dao.selectOne("owner.hotel.selectHotel", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return dto;
	}

	@Override
	public void insertHotel(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertHotel", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateHotel(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateHotel", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateGranted(String hotelId) throws Exception {
		try {
			dao.updateData("owner.hotel.updateGranted", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateRequest(String hotelId) throws Exception {
		try {
			dao.updateData("owner.hotel.updateRequest", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void deleteHotel(String hotelId) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteHotel", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public Hotel selectHotelAddOpt(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dto = dao.selectOne("owner.hotel.selectHotelAddOpt", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return dto;
	}

	@Override
	public void insertHotelAddOpt(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertHotelAddOpt", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateHotelAddOpt(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updatehotelAddOpt", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteHotelAddOpt(String hotelId) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteHotelAddOpt", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public Hotel selectHotelDetail(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dao.selectOne("owner.hotel.selectHotelDetail", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return dto;
	}

	@Override
	public void insertHotelDetail(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertHotelDetail", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateHotelDetail(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateHotelDetail", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void deleteHotelDetail(String hotelId) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteHotelDetail", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public Hotel selectHotelPhoto(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dao.selectOne("owner.hotel.selectHotelPhoto", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return dto;
	}

	@Override
	public void insertHotelPhoto(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertHotelPhoto", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateHotelPhoto(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateHotelPhoto", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void deleteHotelPhoto(String hotelId) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteHotelPhoto", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public Hotel selectHotelPrepare(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dao.selectOne("owner.hotel.selectHotelPrepare", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return dto;
	}

	@Override
	public void insertHotelPrepare(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertHotelPrepare", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateHotelPrepare(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateHotelPrepare", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void deleteHotelPrepare(String hotelId) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteHotelPrepare", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public Hotel selectConvenient(String hotelId) throws Exception {
		Hotel dto = null;
		try {
			dao.selectOne("owner.hotel.selectConvenient", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return dto;
	}

	@Override
	public void insertConvenient(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertConvenient", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void updateConvenient(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateConvenient", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

	@Override
	public void deleteConvenient(String hotelId) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteConvenient", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Hotel> selectRoom(String hotelId) throws Exception {
		List<Hotel> roomList = new ArrayList<>();
		try {
			dao.selectList("owner.hotel.selectRoom", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return roomList;
	}

	@Override
	public void insertRoom(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertRoom", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateRoom(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateRoom", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteRoom(Hotel hotel) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteRoom", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Hotel> selectRoomDetail(String hotelId) throws Exception {
		List<Hotel> roomDetailList = new ArrayList<>();
		try {
			dao.selectList("owner.hotel.selectRoomDetail", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return roomDetailList;
	}

	@Override
	public void insertRoomDetail(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertRoomDetail", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateRoomDetail(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateRoomDetail", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteRoomDetail(Hotel hotel) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteRoomDetail", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Hotel> selectRoomPhoto(String hotelId) throws Exception {
		List<Hotel> roomPhotoList = new ArrayList<>();
		try {
			dao.selectList("owner.hotel.selectRoomPhoto", hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return roomPhotoList;
	}

	@Override
	public void insertRoomPhoto(Hotel hotel) throws Exception {
		try {
			dao.insertData("owner.hotel.insertRoomPhoto", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateRoomPhoto(Hotel hotel) throws Exception {
		try {
			dao.updateData("owner.hotel.updateRoomPhoto", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteRoomPhoto(Hotel hotel) throws Exception {
		try {
			dao.deleteData("owner.hotel.deleteRoomPhoto", hotel);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
