package com.sp.owner.hotel;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("owner.hotel.hotelController")
public class HotelController {

	// 예외처리 마저 해주기
	// 세션에 개인정보 변경이나 호텔 삭제 등에는 세션에 저장해놓은 멤버와 비교하도록 만들기
	// 호텔오너의 호텔 삭제 요청을 위한 request 컬럼 hotel 테이블에 추가했음! 관리자는 request가 1인 호텔목록을 볼 수 있고 승인해주는 방식 삭제 시간상 일단 보류
	// 호텔오너 페이지 시큐리티로 접근 제한하기
	// 파일 업로드 따로 구현하기

	@Autowired
	private HotelService service;

	@RequestMapping(value = "/owner/hotel/viewInfo", method = RequestMethod.GET)
	public String hotelViewInfo(String hotelId, Model model) throws Exception {
		try {
			Hotel dto = service.selectAll(hotelId);
			model.addAttribute("dto", dto);
		} catch (Exception e) {
			model.addAttribute("message", "호텔 정보를 불러오는 데에 실패했습니다.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotel.viewInfo";
	}

	@RequestMapping(value = "/owner/hotelRegister/register1", method = RequestMethod.GET)
	public String hotelRegisterForm1(Model model) throws Exception {
		return ".owner.hotelRegister.register1";
	}

	// register1에서 register2로 넘어갈 때 세션에 정보 검사를 통해 이전단계 끝냈는지 확인하고 세션을 통해 이전단계로 돌아가도
	// 데이터 그대로 나오도록 만들기
	// mapping할 페이지 여러 개 만들고 정보 전부 session에 저장하고 가져와서 쿼리 실행하게 만들기 @RequestParam?
	// @SessionAttribute?, @ModelAttribute?
	// 배열을 필드로 갖는 자료형 클래스를 만들고 사본 배열을 만들어서 데이터를 저장 후 set으로 저장 데이터는 어떻게 넘겨받아야 하지? 배열?
	@RequestMapping(value = "/owner/hotelRegister/register1", method = RequestMethod.POST)
	public String hotelRegisterSession1(SessionInfo info, Model model, HttpSession session) throws Exception {
		try {
			session.setMaxInactiveInterval(30 * 60);
			session.setAttribute("basicInfo", info);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register2";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register2", method = RequestMethod.GET)
	public String hotelRegisterForm2(Model model) throws Exception {
		return ".owner.hotelRegister.register2";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register2", method = RequestMethod.POST)
	public String hotelRegisterSession2(Hotel hotel, Model model, HttpSession session) throws Exception {
		try {
			
			session.setAttribute("location", hotel);
			model.addAttribute("basicInfo", hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			e.printStackTrace();
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register3";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register3", method = RequestMethod.GET)
	public String hotelRegisterForm3(Model model) throws Exception {
		return ".owner.hotelRegister.register3";
	}

	@RequestMapping(value = "/owner/hotelRegister/register3", method = RequestMethod.POST)
	public String hotelRegisterSession3(Hotel hotel, Model model, HttpSession session) throws Exception {
		try {
			session.setAttribute("description", hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register4";
	}

	@RequestMapping(value = "/owner/hotelRegister/register4", method = RequestMethod.GET)
	public String hotelRegisterForm4(Model model) throws Exception {
		return ".owner.hotelRegister.register4";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register4", method = RequestMethod.POST)
	public String hotelRegisterSession4(Hotel hotel, Model model, HttpSession session) throws Exception {
		try {
			
			session.setAttribute("convenient", hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register5";
	}

	@RequestMapping(value = "/owner/hotelRegister/register5", method = RequestMethod.GET)
	public String hotelRegisterForm5(Model model) throws Exception {
		return ".owner.hotelRegister.register5";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register5", method = RequestMethod.POST)
	public String hotelRegisterSession5(Hotel hotel, Model model, HttpSession session) throws Exception {
		try {
			
			session.setAttribute("fee", hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register6";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register6", method = RequestMethod.GET)
	public String hotelRegisterForm6(Model model) throws Exception {
		return ".owner.hotelRegister.register6";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register6", method = RequestMethod.POST)
	public String hotelRegisterSession6(Hotel hotel, Model model, HttpSession session) throws Exception {
		try {
			
			session.setAttribute("convenient", hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register7";
	}

	@RequestMapping(value = "/owner/hotelRegister/register7", method = RequestMethod.GET)
	public String hotelRegisterForm7(Model model) throws Exception {
		return ".owner.hotelRegister.register6";
	}
	
	@RequestMapping(value = "/owner/hotelRegister/register7", method = RequestMethod.POST)
	public String hotelRegisterSubmit(Model model, HttpSession session) throws Exception {
		try {
			Hotel hotel = new Hotel();
			
			// 호텔 종류, 방의 갯수, 방이름(호수), 숙박가능인원, 침대, 욕실
			Hotel basicInfo = (Hotel) session.getAttribute("basicInfo");

			// 
			Hotel location = (Hotel) session.getAttribute("location");
			
			// 
			Hotel description = (Hotel) session.getAttribute("description");
			
			// 
			Hotel convenient = (Hotel) session.getAttribute("convenient");
			
			// 
			Hotel fee = (Hotel)	session.getAttribute("fee");
			
			// 
			Hotel reservationOption = (Hotel) session.getAttribute("reservationOption");
			
			// 
			Hotel photo = (Hotel) session.getAttribute("photo");
			
			// 
			Hotel profile = (Hotel) session.getAttribute("profile");
			
			// 세션 삭제하기
			
			service.insertHotel(hotel);
			service.insertHotelAddOpt(hotel);
			service.insertHotelDetail(hotel);
			// service.insertHotelPhoto(hotel);
			service.insertHotelPrepare(hotel);
			service.insertConvenient(hotel);
			service.insertRoom(hotel);
			service.insertRoomDetail(hotel);
			// service.insertRoomPhoto(hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		model.addAttribute("message", "호텔등록을 성공적으로마쳤습니다. 관리자의 승인을 기다려주세요.");
		return ".owner.errorSuccess.success";
	}

	@RequestMapping(value = "/owner/hotel/editInfo", method = RequestMethod.GET)
	public String hotelEditInfoForm(Model model) {
		return ".owner.hotel.editInfo";
	}

	@RequestMapping(value = "/owner/hotel/editInfo", method = RequestMethod.POST)
	public String hotelEditInfoSubmit(Hotel hotel, Model model) {
		try {
			service.updateHotel(hotel);
			service.updateHotelAddOpt(hotel);
			service.updateHotelDetail(hotel);
			// service.updateHotelPhoto(hotel);
			service.updateHotelPrepare(hotel);
			service.updateConvenient(hotel);
			service.updateRoom(hotel);
			service.updateRoomDetail(hotel);
			// service.updateRoomPhoto(hotel);
		} catch (Exception e) {
			model.addAttribute("message", "호텔정보를 갱신하는 데에 실패했습니다.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotel.viewInfo";
	}

	@RequestMapping(value = "/owner/hotel/exit", method = RequestMethod.GET)
	public String hotelExitForm(Model model) {
		return ".owner.hotel.exit";
	}

	@RequestMapping(value = "/owner/hotel/exit", method = RequestMethod.POST)
	public String hotelExitSubmit(String hotelId, Model model) {
		try {
			service.updateRequest(hotelId);
		} catch (Exception e) {
			model.addAttribute("message", "탈퇴신청 도중 문제가 발생했습니다.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotel.viewInfo";
	}
}
