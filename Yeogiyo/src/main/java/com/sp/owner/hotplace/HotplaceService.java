package com.sp.owner.hotplace;

import java.util.List;
import java.util.Map;

public interface HotplaceService {
	public void insertHotplace(Hotplace dto, String pathname) throws Exception;
	public List<Hotplace> listHotplace(Map<String, Object> map);
}
