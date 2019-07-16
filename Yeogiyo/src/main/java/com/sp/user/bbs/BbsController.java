package com.sp.user.bbs;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.sp.common.MyUtil;
import com.sp.user.member.SessionInfo;

@Controller("user.bbs.bbsController")
public class BbsController {

	@Autowired
	private BbsService service;
	@Autowired
	private MyUtil util;
	
	@RequestMapping(value="/user/bbs/list")
	public String bbsList(@RequestParam(value="page", defaultValue="1") int current_page,
						@RequestParam(defaultValue="all") String condition,
						@RequestParam(defaultValue="") String keyword,
						HttpServletRequest req, Model model) throws Exception {
		int rows=10;
		int total_page=0;
		int dataCount=0;
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			keyword=URLDecoder.decode(keyword, "UTF-8");
		}
		
		Map<String, Object> map=new HashMap<>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		dataCount=service.dataCount(map);
		if(dataCount != 0)
			total_page=util.pageCount(rows, dataCount);
		
		if(current_page > total_page)
			current_page=total_page;
		
		int start=(current_page - 1) * rows + 1;
		int end=current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<Bbs> list=service.listBbs(map);
		
		Date edate=new Date();
		Long gap;
		int listNum, n=0;
		for(Bbs dto:list) {
			listNum=dataCount-(start+n-1);
			dto.setListNum(listNum);
			
			SimpleDateFormat sdfm=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date sdate=sdfm.parse(dto.getCreated());
			
			gap=(edate.getTime()-sdate.getTime()) / (24 *60*60*1000);
			dto.setGap(gap);
			
			dto.setCreated(dto.getCreated().substring(0, 10));
			n++;
		}
		String cp=req.getContextPath();
		String query="";
		String listUrl=cp+"/user/bbs/list";
		String articleUrl=cp+"/user/bbs/article?page="+current_page;
		
		if(keyword.length()!=0) {
			query+="condition="+condition+"&keyword="+URLEncoder.encode(keyword, "UTF-8");
		}
		if(query.length()!=0) {
			listUrl=cp+"/user/bbs/list"+query;
			articleUrl=cp+"/user/bbs/article?page="+current_page+"&"+query;
		}
		String paging=util.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("page", current_page);
		model.addAttribute("total_page", total_page);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("paging", paging);
		
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		
		return ".user.bbs.list";
	}
	
	@RequestMapping(value="/user/bbs/created", method=RequestMethod.GET)
	public String bbsCreatedForm(Model model) throws Exception {
		model.addAttribute("mode", "created");
		return ".user.bbs.created";
	}
	
	@RequestMapping(value="/user/bbs/created", method=RequestMethod.POST)
	public String bbsCreatedSubmit(Bbs dto, HttpSession session) throws Exception {
		SessionInfo info=(SessionInfo)session.getAttribute("member");
		try {
			dto.setUserId(info.getUserId());
			service.insertBbs(dto);
		} catch (Exception e) {
		}
		return "redirect:/user/bbs/list";
	}
}
