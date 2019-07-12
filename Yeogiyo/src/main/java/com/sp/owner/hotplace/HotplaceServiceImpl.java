package com.sp.owner.hotplace;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sp.common.FileManager;
import com.sp.common.dao.CommonDAO;

@Service("owner.hotplace.hotplaceServiceImpl")
public class HotplaceServiceImpl implements HotplaceService{

	@Autowired
	private CommonDAO dao;
	@Autowired
	private FileManager filemanager;
	
	@Override
	public void insertHotplace(Hotplace dto, String pathname) throws Exception {
		try {
			int seq = dao.selectOne("owner.hotplace.seq");
			dto.setPlaceNum(seq);

			if(! dto.getUpload().isEmpty()) {
				MultipartFile mf = dto.getUpload();
				String saveFilename = filemanager.doFileUpload(mf, pathname);
				if(saveFilename!=null) {
					dto.setPlacePhoto(saveFilename);
				}
					
			}
			
			dao.insertData("owner.hotplace.insertHotplace", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public List<Hotplace> listHotplace(Map<String, Object> map){
		List<Hotplace> list = null;
		
		try {
			list = dao.selectList("owner.hotplace.selectHotplace", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
