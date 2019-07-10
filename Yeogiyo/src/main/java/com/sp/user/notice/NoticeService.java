package com.sp.user.notice;

import java.util.Map;

public interface NoticeService {

	public void insertNotice(Notice dto);
	public int dataCount(Map<String, Object> map);
}
