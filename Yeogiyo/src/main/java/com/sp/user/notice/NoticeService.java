package com.sp.user.notice;

import java.util.List;
import java.util.Map;

public interface NoticeService {

	public void insertNotice(Notice dto);
	
	public int dataCount(Map<String, Object> map);
	public List<Notice> listNotice(Map<String, Object> map);
	
	public Notice readNotice(int noticeNum);
	public Notice preReadNotice(Map<String, Object> map);
	public Notice nextReadNotice(Map<String, Object> map);
	
	public void updateNotice(Notice dto) throws Exception;
	public void deleteNotice(int noticeNum) throws Exception;
	
}
