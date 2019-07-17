package com.sp.user.wishlist;

import java.util.List;
import java.util.Map;

public interface WishListService {
	public List<WishList> list(Map<String, Object> map);
	
	public void deletewishlist(String hotelId) throws Exception;
	public void insertwishlist(String hotelId) throws Exception;
}
