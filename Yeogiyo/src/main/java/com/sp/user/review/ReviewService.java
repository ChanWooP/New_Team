package com.sp.user.review;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	public List<Review> reviewList(Map<String, Object> map);
	public int reviewCount();
	
	public Review reviewArticle(int reviewNum);
}
