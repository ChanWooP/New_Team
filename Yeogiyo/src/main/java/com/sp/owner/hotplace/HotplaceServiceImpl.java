package com.sp.owner.hotplace;

import org.springframework.beans.factory.annotation.Autowired;

public class HotplaceServiceImpl implements HotplaceService{

	@Autowired
	private HotplaceDAO hotplaceDAO;
	
	@Override
	public void insertHotplace(Hotplace dto, String pathName) throws Exception {
		//파일처리해주기
		
		hotplaceDAO.insertHotplace(dto);
	}
	
}
