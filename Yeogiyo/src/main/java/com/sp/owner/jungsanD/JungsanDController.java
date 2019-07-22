package com.sp.owner.jungsanD;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.user.member.SessionInfo;

@Controller("owner.jungsanD.jungsanDController")
public class JungsanDController {
	
	@Autowired
	private JungsanDService service;
	
	@RequestMapping("/owner/jungsanD/list")
	public String list(@RequestParam(defaultValue="")String day
						,@RequestParam(defaultValue="")String msg
						,HttpSession session
						,Model model) {
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		
		Map<String, Object> map = new HashMap<>();
		map.put("hotelId", info.getUserId());
		
		
		
		if(day.equals("") || day==null) {
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");		
			Date time = new Date();		
			String time1 = format1.format(time);
			day = time1;
		}
		map.put("day", day);
		
		List<JungsanD> list = service.select(map);
		
		int sum = 0;
		for(JungsanD j : list) {
			sum += j.getPrice();
		}
		
		model.addAttribute("list", list);
		model.addAttribute("sum", sum);
		model.addAttribute("day", day);
		model.addAttribute("msg",msg);
		
		return ".owner.jungsanD.list";
	}
	
	@RequestMapping("/owner/jungsanD/insert")
	public String insert(String day, HttpSession session, Model model) throws Exception {
	
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String msg = "";
		
		Map<String, Object> map = new HashMap<>();
		map.put("hotelId", info.getUserId());
		map.put("day", day);
		
		try {
			service.insert(map);	
			msg = "정산이 완료되었습니다.";
		} catch (Exception e) {
			msg = "정산이 실패하였습니다.";
		}
		
		String query = "day="+day+"&msg="+URLEncoder.encode(msg, "utf-8");

		return "redirect:/owner/jungsanD/list?"+query;
	}
}
