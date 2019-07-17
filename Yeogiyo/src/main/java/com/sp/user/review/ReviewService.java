package com.sp.user.review;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	public void createReview(Review dto) throws Exception;

	public List<Review> reviewList(Map<String, Object> map);
	public int reviewCount();
	
	public Review reviewArticle(int reviewNum);
	
	public void updateReview(Review dto) throws Exception;
	public void deleteReview(int reviewNum) throws Exception;
}
