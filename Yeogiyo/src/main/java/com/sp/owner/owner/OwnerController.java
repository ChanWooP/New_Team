package com.sp.owner.owner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("Owner.OwnerController")
public class OwnerController {

	@Autowired
	private OwnerService ownerService;
	
	@RequestMapping(value="")
	public String list(Owner owner) {
		try {
		List<Owner> listOwner = ownerService.selectList();
		} catch(Exception e) {
			
		}
		return "";	
	}
}
