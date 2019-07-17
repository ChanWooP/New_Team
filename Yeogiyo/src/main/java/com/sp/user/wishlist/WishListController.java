package com.sp.user.wishlist;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("user.wish.wishController")
public class WishListController {
	@Autowired
	private WishListService service;
	
	@RequestMapping(value="/user/wishlist/list")
	public String showWishlist () {
		return ".user.wishlist.list";
	}
	
}
