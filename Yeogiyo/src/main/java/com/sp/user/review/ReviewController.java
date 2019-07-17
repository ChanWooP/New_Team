package com.sp.user.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.common.MyUtil;

@Controller("user.review.reviewController")
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	
	@Autowired
	private MyUtil util;
	
	@RequestMapping(value="/user/review/list")
	public String reviewList(@RequestParam(value="page", defaultValue="1") int current_page,
			HttpServletRequest req, Model model) throws Exception {
		String cp = req.getContextPath();
		
		int rows=10;
		int total_page=0;
		int reviewCount=service.reviewCount();
		
		if(reviewCount!=0)
			total_page=util.pageCount(rows, reviewCount);
		
		if(current_page>total_page)
			current_page=total_page;
		
		int start=(current_page-1)*rows+1;
		int end=current_page*rows;
		Map<String, Object> map=new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		
		List<Review> reviewlist=service.reviewList(map);
		
		int listNum, n=0;
		for(Review dto:reviewlist) {
			listNum=reviewCount-(start+n-1);
			dto.setListNum(listNum);
		}
		
		String listUrl= cp+"/user/review/list";
		String articleUrl = cp+"/user/review/article?page=" + current_page;
		
		String paging = util.paging(current_page, total_page,listUrl);
		
		
		model.addAttribute("reviewlist", reviewlist);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".user.review.list";
	}
	
	@RequestMapping(value="/user/review/article")
	public String reviewArticle(@RequestParam int reviewNum, Model model) {
		Review article = null;
		System.out.println(reviewNum);
		article=service.reviewArticle(reviewNum);
		
		model.addAttribute("article", article);
		
		return ".user.review.article";
	}
	
	@RequestMapping(value="/user/review/create")
	public String reviewCreate() {
		
		
		return ".user.review.create";
	}
	
	@RequestMapping(value="/user/review/complete")
	public String reviewCreateComplete() {
		return ".user.review.list";
	}
	
}
