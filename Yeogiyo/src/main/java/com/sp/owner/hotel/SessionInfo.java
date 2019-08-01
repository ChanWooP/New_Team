package com.sp.owner.hotel;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class SessionInfo {
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
		private String hotelSize;
		private String hotelTel;
		private String hotelCreated;
		private String checkIn;
		private String checkOut;
		private String businessNum;
		private int grade;

		// hotelphoto 테이블
		private int hotelPhotoNum;
		private String hotelPhotoName;

		// hotelprepare 테이블
		private int prepareNum;
		private String prepareContent;

		// hoteltype 테이블
		private int typeNum;
		private String type;

		// convenient 테이블
		private int conNum;
		private String conName;
		private String conType;
		private String conPrice; // conOpenTime, closeTime DB에서 삭제하기

		// room 테이블
		private int roomNum;
		private String roomName;
		private int stair;
		private String roomType;
		private int maxPeople;
		private String roomStatus; // default 처리 해주기
		private int roomPrice;
		private int extraPrice; // 까먹지 말고 방 추가 때 넣기

		// roomDetail 테이블
		private int roomDetailNum;
		private String roomDetails;

		// roomPhoto 테이블
		private int roomPhotoNum;
		private String roomPhotoName;

		// 배열들
		// 위에 int로 준 optNum 같은 필드들 스프링에서 에러가 날 수 있으니 String으로 처리해주고 나중에 형변환시키기
		// 이미지 업로드를 위한 MultipartFile 자료형
		private List<MultipartFile> uploads;
		private MultipartFile mainUpload;

		// register4에서 데이터를 받아오기 위한 필드들
		private List<String> recommendation;
		private List<String> internet;
		private List<String> access;
		private List<String> kitchen;
		private List<String> convenient;
		private List<String> safety;
		private List<String> others;
		private List<String> notFree;
		private List<String> conPrices;

}
