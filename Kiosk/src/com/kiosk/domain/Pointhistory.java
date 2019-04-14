package com.kiosk.domain;

public class Pointhistory {
	private String PointHistoryId;
	private String LastPaymentId;
	private String PaymentListId;
	private String userphone;
	private int Point_;
	private String Gubun;
	private String LastPaymentDate ;
	
	public Pointhistory() {
		
	}
	
	public Pointhistory(String userphone, int point_, String gubun, String lastPaymentDate) {
		this.userphone = userphone;
		Point_ = point_;
		Gubun = gubun;
		LastPaymentDate = lastPaymentDate;
	}


	public Pointhistory(String pointHistoryId, String lastPaymentId, String paymentListId, String userphone, int point_,
			String gubun) {
		PointHistoryId = pointHistoryId;
		LastPaymentId = lastPaymentId;
		PaymentListId = paymentListId;
		this.userphone = userphone;
		Point_ = point_;
		Gubun = gubun;
	}

	public String getPointHistoryId() {
		return PointHistoryId;
	}

	public void setPointHistoryId(String pointHistoryId) {
		PointHistoryId = pointHistoryId;
	}

	public String getLastPaymentId() {
		return LastPaymentId;
	}

	public void setLastPaymentId(String lastPaymentId) {
		LastPaymentId = lastPaymentId;
	}

	public String getPaymentListId() {
		return PaymentListId;
	}

	public void setPaymentListId(String paymentListId) {
		PaymentListId = paymentListId;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public int getPoint_() {
		return Point_;
	}

	public void setPoint_(int point_) {
		Point_ = point_;
	}

	public String getGubun() {
		return Gubun;
	}

	public void setGubun(String gubun) {
		Gubun = gubun;
	}

	public String getLastPaymentDate() {
		return LastPaymentDate;
	}

	public void setLastPaymentDate(String lastPaymentDate) {
		LastPaymentDate = lastPaymentDate;
	}
	
}
