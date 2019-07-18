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
			article=dao.selectOne("reviewarticle",reviewNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return article;
	}

	@Override
	public void createReview(Review dto) throws Exception {
		try {
			dao.insertData("reviewInsert",dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void updateReview(Review dto) throws Exception {
		try {
			dao.updateData("reviewUpdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void deleteReview(int reviewNum) throws Exception {
		try {
			dao.deleteData("reviewDelete",reviewNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}
}
