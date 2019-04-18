package com.kiosk.domain;

public class Pointhistory {
	private String pointHistoryId;
	private String lastPaymentId;
	private String paymentListId;
	private String userphone;
	private int point_;
	private String gubun;
	private String lastPaymentDate ;
	
	public Pointhistory() {
		
	}
	
	public Pointhistory(String userphone, int point_, String gubun, String lastPaymentDate) {
		this.userphone = userphone;
		this.point_ = point_;
		this.gubun = gubun;
		this.lastPaymentDate = lastPaymentDate;
	}


	public Pointhistory(String lastPaymentId, String paymentListId, String userphone, int point_,
			String gubun) {
		this.lastPaymentId = lastPaymentId;
		this.paymentListId = paymentListId;
		this.userphone = userphone;
		this.point_ = point_;
		this.gubun = gubun;
	}
	
	public Pointhistory(String pointHistoryId, String lastPaymentId, String paymentListId, String userphone, int point_,
			String gubun) {
		this.pointHistoryId = pointHistoryId;
		this.lastPaymentId = lastPaymentId;
		this.paymentListId = paymentListId;
		this.userphone = userphone;
		this.point_ = point_;
		this.gubun = gubun;
	}

	public String getPointHistoryId() {
		return pointHistoryId;
	}

	public void setPointHistoryId(String pointHistoryId) {
		this.pointHistoryId = pointHistoryId;
	}

	public String getLastPaymentId() {
		return lastPaymentId;
	}

	public void setLastPaymentId(String lastPaymentId) {
		this.lastPaymentId = lastPaymentId;
	}

	public String getPaymentListId() {
		return paymentListId;
	}

	public void setPaymentListId(String paymentListId) {
		this.paymentListId = paymentListId;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public int getPoint_() {
		return point_;
	}

	public void setPoint_(int point_) {
		this.point_ = point_;
	}

	public String getGubun() {
		return gubun;
	}

	public void setGubun(String gubun) {
		this.gubun = gubun;
	}

	public String getLastPaymentDate() {
		return lastPaymentDate;
	}

	public void setLastPaymentDate(String lastPaymentDate) {
		this.lastPaymentDate = lastPaymentDate;
	}
	
}
