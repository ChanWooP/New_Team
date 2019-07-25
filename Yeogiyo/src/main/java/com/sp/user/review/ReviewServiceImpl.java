package com.sp.user.review;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("user.review.reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<Review> reviewList(Map<String, Object> map) {
		List<Review> list =null;
		try {
			list=dao.selectList("user.review.reviewList", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int reviewCount() {
		int count=0;
		try {
			count=dao.selectOne("user.review.reviewCount");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public Review reviewArticle(int reviewNum) {
		Review article = null;
		try {
			article=dao.selectOne("user.review.reviewarticle", reviewNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return article;
	}

	@Override
	public Review beforeCreate(int reservationNum) {
		Review before = null;
		try {
			before=dao.selectOne("user.review.beforeCreateReview", reservationNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return before;
	}
	
	@Override
	public void createReview(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("user.review.reviewInsert",map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateReview(Review dto) throws Exception {
		try {
			dao.updateData("user.review.reviewUpdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void deleteReview(int reviewNum) throws Exception {
		try {
			dao.deleteData("user.review.reviewDelete",reviewNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void insertReply(Map<String, Object> map) throws Exception{
		try {
			dao.insertData("user.review.replyInsert",map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public List<Review> ListReply(int reviewNum) {
		List<Review> replylist = null;
		try {
			replylist=dao.selectList("user.review.replyList", reviewNum);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return replylist;
	}

	@Override
	public void report(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("user.review.reviewReport",map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
