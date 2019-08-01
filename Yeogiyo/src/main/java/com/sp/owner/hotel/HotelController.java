package com.sp.owner.hotel;

import java.io.File;

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
	// 파일 업로드 정상 작동하는지 확인하기

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

	// 데이터 그대로 나오도록 만들기
	// mapping할 페이지 여러 개 만들고 정보 전부 session에 저장하고 가져와서 쿼리 실행하게 만들기 @RequestParam?
	// @SessionAttribute?, @ModelAttribute?
	// 배열을 필드로 갖는 자료형 클래스를 만들고 사본 배열을 만들어서 데이터를 저장 후 set으로 저장 데이터는 어떻게 넘겨받아야 하지? 배열?
	@RequestMapping(value = "/owner/hotelRegister/register1", method = RequestMethod.POST)
	public String hotelRegisterSession1(Hotel hotel, Model model, HttpSession session) throws Exception {
		try {
			session.setMaxInactiveInterval(30 * 60);
			session.setAttribute("basicInfo", hotel);
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
			session.setAttribute("recommendation", hotel);
			session.setAttribute("internet", hotel);
			session.setAttribute("access", hotel);
			session.setAttribute("kitchen", hotel);
			session.setAttribute("convenient", hotel);
			session.setAttribute("safety", hotel);
			session.setAttribute("others", hotel);
			session.setAttribute("notFree", hotel);
			session.setAttribute("conPrices", hotel);
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
			session.setAttribute("photo", hotel);
		} catch (Exception e) {
			// 오우너 메인 페이지 넣을 예정 어떻게 어디에 만들지?
			model.addAttribute("message", "호텔등록 중 오류가 발생했습니다. 다시 시도해주세요.");
			return ".owner.errorSuccess.error";
		}
		return ".owner.hotelRegister.register6";
	}

	@RequestMapping(value = "/owner/hotelRegister/register6", method = RequestMethod.GET)
	public String hotelRegisterForm7(Model model) throws Exception {
		return ".owner.hotelRegister.register6";
	}
	
	
	// hotleId null로 찍힘 원인 확인 불가! sysout 으로 출력도 안 됨 제대로 안 보내지는 건가?
	@RequestMapping(value = "/owner/hotelRegister/register6", method = RequestMethod.POST)
	public String hotelRegisterSubmit(Model model, HttpSession session) throws Exception {
		try {
			Hotel hotel = new Hotel();
			
			// 숙소 종류, 숙소 크기,  체크인 시간, 체크아웃 시간, 전화번호, 숙소 등급, 사업자번호
			Hotel basicInfo = (Hotel) session.getAttribute("basicInfo");
			hotel.setType(basicInfo.getType());
			hotel.setHotelSize(basicInfo.getHotelSize());
			hotel.setCheckIn(basicInfo.getCheckIn());
			hotel.setCheckOut(basicInfo.getCheckIn());
			hotel.setHotelTel(basicInfo.getCheckIn());
			hotel.setGrade(basicInfo.getGrade());
			hotel.setBusinessNum(basicInfo.getBusinessNum());

			// 우편번호, 기본 주소, 상세 주소
			Hotel location = (Hotel) session.getAttribute("location");
			hotel.setPostCode(location.getPostCode());
			hotel.setAddr1(location.getAddr1());
			hotel.setAddr2(location.getAddr2());
			
			// 숙소명, 숙소 소개, 숙소 준비사항
			Hotel description = (Hotel) session.getAttribute("description");
			hotel.setHotelName(description.getHotelName());
			hotel.setDetail(description.getDetail());
			
			// 무료 편의시설(conveninet), 유료 편의시설(hotelAddOpt)	
			hotel.setRecommendation(((Hotel) session.getAttribute("recommendation")).getRecommendation());
			hotel.setInternet( ((Hotel) session.getAttribute("internet")).getInternet());
			hotel.setAccess(((Hotel) session.getAttribute("access")).getAccess());
			hotel.setKitchen(((Hotel) session.getAttribute("kitchen")).getKitchen());
			hotel.setConvenient(((Hotel) session.getAttribute("convenient")).getConvenient());
			hotel.setSafety(((Hotel) session.getAttribute("safety")).getSafety());
			hotel.setOthers(((Hotel) session.getAttribute("others")).getOthers());
			hotel.setNotFree(((Hotel) session.getAttribute("notFree")).getNotFree());
			hotel.setConPrices(((Hotel) session.getAttribute("conPrices")).getConPrices());
			
			// 호텔 사진, 호텔 대표 사진
			Hotel photo = (Hotel)	session.getAttribute("photo");
			hotel.setUploads(photo.getUploads());
			hotel.setMainUpload(photo.getMainUpload());
			
			
			// 세션 삭제하기
			session.invalidate();
			
			
			service.insertHotel(hotel);
			service.insertHotelPrepare(hotel);
			service.insertHotelDetail(hotel);
			service.insertHotelAddOpt(hotel);	
			
			String root=session.getServletContext().getRealPath("/");
			String path=root+"uploads"+File.separator+"photo";

			service.insertHotelPhoto(hotel, path);

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
	
	@RequestMapping(value = "/owner/errorSuccess/error", method = RequestMethod.GET)
	public String error(Model model) throws Exception {
		return ".owner.errorSuccess.error";
	}
	
	@RequestMapping(value = "/owner/errorSuccess/success", method = RequestMethod.GET)
	public String success(Model model) throws Exception {
		return ".owner.errorSuccess.success";
	}
}
