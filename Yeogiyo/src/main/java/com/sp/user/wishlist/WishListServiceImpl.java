package com.sp.user.wishlist;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("user.wishlist.wishlistService")
public class WishListServiceImpl implements WishListService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<WishList> list(Map<String, Object> map) {
		List<WishList> list = null;
		try {
			list = dao.selectList("", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void deletewishlist(String hotelId) throws Exception {
		try {
			dao.deleteData(hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void insertwishlist(String hotelId) throws Exception {
		try {
			dao.insertData(hotelId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}
