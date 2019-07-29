package com.sp.owner.hotel;

import org.springframework.web.multipart.MultipartFile;

// 필드 수정 및 추가해야함
public class SessionInfo {

	// 세션에 저장해야하나? 어떻게 가져오지? 세션에 저장된 유저아이디 사용? 어디에 있더라?
	private String hotelId;

	// register1
	private String hotelType;
	private int hotelSize;
	private String hotelTel;
	private String businessNum;
	private String checkIn;
	private String checkOut;
	private int grade;

	// register2
	private int zip;
	private String basicAddr;
	private String subAddr;

	// register3
	private String hotelName;
	private String hotelDescription;
	private String hotelRule;
	private String hotelPrepare;

	// register4
	private String conName;
	private String conType;
	private String conPrice;

	// register5
	private MultipartFile[] hotelPhoto;
	private MultipartFile mainPhoto;

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelType() {
		return hotelType;
	}

	public void setHotelType(String hotelType) {
		this.hotelType = hotelType;
	}

	public int getHotelSize() {
		return hotelSize;
	}

	public void setHotelSize(int hotelSize) {
		this.hotelSize = hotelSize;
	}

	public String getHotelTel() {
		return hotelTel;
	}

	public void setHotelTel(String hotelTel) {
		this.hotelTel = hotelTel;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getBasicAddr() {
		return basicAddr;
	}

	public void setBasicAddr(String basicAddr) {
		this.basicAddr = basicAddr;
	}

	public String getSubAddr() {
		return subAddr;
	}

	public void setSubAddr(String subAddr) {
		this.subAddr = subAddr;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelDescription() {
		return hotelDescription;
	}

	public void setHotelDescription(String hotelDescription) {
		this.hotelDescription = hotelDescription;
	}

	public String getHotelRule() {
		return hotelRule;
	}

	public void setHotelRule(String hotelRule) {
		this.hotelRule = hotelRule;
	}

	public String getHotelPrepare() {
		return hotelPrepare;
	}

	public void setHotelPrepare(String hotelPrepare) {
		this.hotelPrepare = hotelPrepare;
	}

	public String getConName() {
		return conName;
	}

	public void setConName(String conName) {
		this.conName = conName;
	}

	public String getConType() {
		return conType;
	}

	public void setConType(String conType) {
		this.conType = conType;
	}

	public String getConPrice() {
		return conPrice;
	}

	public void setConPrice(String conPrice) {
		this.conPrice = conPrice;
	}

	public MultipartFile[] getHotelPhoto() {
		return hotelPhoto;
	}

	public void setHotelPhoto(MultipartFile[] hotelPhoto) {
		this.hotelPhoto = hotelPhoto;
	}

	public MultipartFile getMainPhoto() {
		return mainPhoto;
	}

	public void setMainPhoto(MultipartFile mainPhoto) {
		this.mainPhoto = mainPhoto;
	}

}
