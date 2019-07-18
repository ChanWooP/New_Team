package com.sp.owner.hotelqna;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.common.MyUtil;

@Controller("owner.hotelqna.hotelQnaServiec")
public class HotelQnaController {
	
	@Autowired
	private MyUtil myUtil;
	
	@Autowired
	private HotelQnaService service;
	
	@RequestMapping(value="/owner/hotelqna/list")
	public String list(	@RequestParam(value="page", defaultValue="1") int current_page,
			@RequestParam(defaultValue="all")String condition,
			@RequestParam(defaultValue="") String keyword,
			HttpServletRequest req,
			Model model) throws Exception{
		
		int rows = 10;
		int total_page = 0;
		int dataCount = 0;
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			keyword = URLDecoder.decode(keyword, "utf-8");
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		
		dataCount = service.dataCount(map);
		if(dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		if(total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		
		List<HotelQna> list = service.listHotelQna(map);
		
        for(HotelQna dto : list) {
        	dto.setQnaCreated(dto.getQnaCreated().substring(0, 10));
        }
		
		String cp = req.getContextPath();
		String query = "";
		String listUrl = cp+"/owner/hotelqna/list";
		
		if(keyword.length()!=0) {
			query = "condition="+condition+
					"&keyword="+URLEncoder.encode(keyword, "utf-8");
		}
		
		if(query.length()!=0) {
			listUrl = cp+"/owner/hotelqna/list?"+query;
		}
		
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("condition", condition);
		model.addAttribute("keyword", keyword);
		
		return ".owner.hotelqna.list";
	}
	
	@RequestMapping(value="/owner/hotelqna/lists")
	@ResponseBody
	public Map<String, List<HotelQna>> lists(int qnaNum){
		Map<String, List<HotelQna>> model = new HashMap<>();
		try {
			List<HotelQna> list = service.listHotelQna(qnaNum);
			model.put("list", list);
		} catch (Exception e) {
		}
		return model;
	}
}
