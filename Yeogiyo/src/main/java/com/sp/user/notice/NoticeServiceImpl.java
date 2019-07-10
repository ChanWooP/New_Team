package com.sp.user.notice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service("user.notice.noticeService")
public class NoticeServiceImpl implements NoticeService {

	//private co
	@Override
	public void insertNotice(Notice dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Notice> listNotice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Notice readNotice(int noticeNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Notice preReadNotice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Notice nextReadNotice(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateNotice(Notice dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteNotice(int noticeNum) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
