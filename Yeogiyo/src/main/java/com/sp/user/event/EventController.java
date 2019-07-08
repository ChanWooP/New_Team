package com.sp.user.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("user.eventController")
public class EventController {

	@RequestMapping(value="/user/event/list", method=RequestMethod.GET)
	public String eventlist() {
		return ".user.event.list";
	}
	
	@RequestMapping(value="/user/event/created", method=RequestMethod.GET)
	public String eventcreatedForm() {
		return ".user.event.created";
	}
}
