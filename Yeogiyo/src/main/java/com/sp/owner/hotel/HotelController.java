package com.sp.owner.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("owner.hotel.hotelController")
public class HotelController {
	// 트랜잭션 처리 예외처리 마저 해주기
	// 세션에 개인정보 변경이나 호텔 삭제 등에는 세션에 저장해놓은 멤버와 비교하도록 만들기
	// 호텔오너의 호텔 삭제 요청을 위한 requeset 컬럼 hotel 테이블에 추가했음! 관리자는 request가 1인 호텔목록을 볼 수 있고 승인해주는 방식
	// 호텔오너 페이지 시큐리티로 접근 제한하기
	
	@Autowired
	private HotelService service;
	
	@RequestMapping(value="/owner/hotel/viewInfo", method=RequestMethod.GET)
	public String hotelViewInfo(String hotelId, Model model) throws Exception {
		try {
		Hotel dto = service.selectAll(hotelId);
		model.addAttribute("dto", dto);
		} catch(Exception e) {
			model.addAttribute("message", "호텔 정보를 불러오는 데에 실패했습니다.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotel.viewInfo";
	}
	
	// model 데이터를 jsp 페이지로 넘기는 데에 사용 다른 방법 뭐 있더라?
	// get 방식으로 value의 주소로 접근시 return 문에 적힌 곳으로 연결시켜줌(웹 주소와 jsp의 주소가 같아도 필수?)
	@RequestMapping(value="/owner/hotel/register", method=RequestMethod.GET)
	public String hotelRegisterForm(Model model) throws Exception{
		return ".owner.hotel.register";
	}
	
	@RequestMapping(value="/owner/hotel/register", method=RequestMethod.POST)
	public String hotelRegisterSubmit(Hotel hotel, Model model) throws Exception {
		try {
			service.insertHotel(hotel);
			service.insertHotelAddOpt(hotel);
			service.insertHotelDetail(hotel);
			service.insertHotelPhoto(hotel);
			service.insertHotelPrepare(hotel);
			service.insertConvenient(hotel);
		} catch(Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		model.addAttribute("message", "호텔등록을 성공적으로 마쳤습니다. 관리자의 승인을 기다려주세요.");
		return ".owner.errorSuccess.success";
	}
	
	@RequestMapping(value="/owner/hotel/editInfo", method=RequestMethod.GET)
	public String hotelEditInfoForm(Model model) {
		return ".owner.hotel.editInfo";
	}
	
	@RequestMapping(value="/owner/hotel/editInfo", method=RequestMethod.POST)
	public String hotelEditInfoSubmit(Hotel hotel, Model model) {
		try {
			service.updateHotel(hotel);
			service.updateHotelAddOpt(hotel);
			service.updateHotelDetail(hotel);
			service.updateHotelPhoto(hotel);
			service.updateHotelPrepare(hotel);
			service.updateConvenient(hotel);
		} catch(Exception e) {
			model.addAttribute("message", "호텔정보를 갱신하는 데에 실패했습니다.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotel.viewInfo";
	}
	
	@RequestMapping(value="/owner/hotel/exit", method=RequestMethod.GET)
	public String hotelExitForm(Model model) {
		return ".owner.hotel.exit";
	}
	
	@RequestMapping(value="/owner/hotel/exit", method=RequestMethod.POST)
	public String hotelExitSubmit(String hotelId, Model model) {
		try {
			service.updateRequest(hotelId);
		} catch(Exception e) {
			model.addAttribute("message", "탈퇴신청 도중 문제가 발생했습니다.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotel.viewInfo";
	}
}
