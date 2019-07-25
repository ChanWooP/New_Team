package com.sp.user.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.common.MyUtil;
import com.sp.user.member.SessionInfo;

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
		
		article=service.reviewArticle(reviewNum);
		
		model.addAttribute("article", article);
		
		return ".user.review.article";
	}
	
	@RequestMapping(value="/user/review/create")
	public String reviewCreate(@RequestParam int reservationNum,Model model) {
		
		Review review = service.beforeCreate(reservationNum);
		
		
		model.addAttribute("reservationNum",reservationNum);
		model.addAttribute("review",review);
		return ".user.review.create";
	}
	
	@RequestMapping(value="/user/review/complete")
	public String reviewCreateComplete(@RequestParam Map<String, Object> map, HttpSession session) {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		String userId = info.getUserId();
		map.put("userId", userId);
		try {
			service.createReview(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/user/review/list";
	}
		
	@RequestMapping(value="/user/review/report")
	public String reviewReport(@RequestParam String hotelId, @RequestParam int reviewNum, Model model){
		model.addAttribute("hotelId",hotelId);
		model.addAttribute("reviewNum",reviewNum);
		
		return ".user.review.reportCreate";
	}
	
	@RequestMapping(value="/user/review/reportComplete")
	public String ReportForm(@RequestParam Map<String, Object> map) throws Exception{
		try {
			service.report(map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return "redirect:/user/review/list";
	}
	//----------------------------------------------------------------댓글
	
	@RequestMapping(value="/user/review/replycreate", method=RequestMethod.POST)
	@ResponseBody
	public void replyCreate(@RequestParam Map<String, Object> map, Review dto,HttpSession session) {
		SessionInfo info=(SessionInfo)session.getAttribute("member");	
		
		try {
			dto.setUserId(info.getUserId());
			service.insertReply(map);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	

	
}
