package com.sp.owner.hotel;

public class Hotel {
	// hotel 테이블
	private String hotelId;
	private String hotelName;
	private int granted;

	// hoteladdopt 테이블
	private int optNum;
	private String optName;
	private String optPrice;

	// hoteldetail 테이블
	private String detail;
	private String mainPhoto;
	private String addr1;
	private String addr2;
	private String postCode;
	private String latitude;
	private String longitude;

	// hotelphoto 테이블
	private int hotelPhotoNum;
	private String hotelPhotoName;

	// hotelprepare 테이블
	private int prepareNum;
	private String prepare;

	// hoteltype 테이블
	private int typeNum;
	private String type;

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public int getGranted() {
		return granted;
	}

	public void setGranted(int granted) {
		this.granted = granted;
	}

	public int getOptNum() {
		return optNum;
	}

	public void setOptNum(int optNum) {
		this.optNum = optNum;
	}

	public String getOptName() {
		return optName;
	}

	public void setOptName(String optName) {
		this.optName = optName;
	}

	public String getOptPrice() {
		return optPrice;
	}

	public void setOptPrice(String optPrice) {
		this.optPrice = optPrice;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getMainPhoto() {
		return mainPhoto;
	}

	public void setMainPhoto(String mainPhoto) {
		this.mainPhoto = mainPhoto;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public int getHotelPhotoNum() {
		return hotelPhotoNum;
	}

	public void setHotelPhotoNum(int hotelPhotoNum) {
		this.hotelPhotoNum = hotelPhotoNum;
	}

	public String getHotelPhotoName() {
		return hotelPhotoName;
	}

	public void setHotelPhotoName(String hotelPhotoName) {
		this.hotelPhotoName = hotelPhotoName;
	}

	public int getPrepareNum() {
		return prepareNum;
	}

	public void setPrepareNum(int prepareNum) {
		this.prepareNum = prepareNum;
	}

	public String getPrepare() {
		return prepare;
	}

	public void setPrepare(String prepare) {
		this.prepare = prepare;
	}

	public int getTypeNum() {
		return typeNum;
	}

	public void setTypeNum(int typeNum) {
		this.typeNum = typeNum;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
