package com.sp.owner.review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("owner.review.reviewController")
public class ReviewController {
	
	@RequestMapping(value="/owner/review/list")
	public String list() {
		return ".owner.review.list";
	}
}
