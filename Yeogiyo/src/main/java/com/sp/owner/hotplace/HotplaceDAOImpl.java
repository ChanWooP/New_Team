package com.sp.owner.hotplace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("Hotplace.hotplaceDAO")
public class HotplaceDAOImpl implements HotplaceDAO{

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public void insertHotplace(Hotplace dto) throws Exception {
		try {
			sqlsession.insert("Hotplace.insertHotplace",dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
