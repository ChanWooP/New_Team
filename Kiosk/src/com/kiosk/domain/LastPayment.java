package com.kiosk.domain;

public class LastPayment {
	private String lastPaymentId;
	private String lastPaymentDate;
	private int lastPaymentMoney;
	private int num_;
	private String month_;
	private int price_;
	private String day_;
	
	public LastPayment() {
	
	}

	public LastPayment(String day_, int price_) {
		this.price_ = price_;
		this.day_ = day_;
	}



	public LastPayment(String lastPaymentId, String lastPaymentDate, int lastPaymentMoney) {
		this.lastPaymentId = lastPaymentId;
		this.lastPaymentDate = lastPaymentDate;
		this.lastPaymentMoney = lastPaymentMoney;
	}



	public LastPayment(int num_, String month_, int price_) {
		this.num_ = num_;
		this.month_ = month_;
		this.price_ = price_;
	}

	public String getLastPaymentId() {
		return lastPaymentId;
	}

	public void setLastPaymentId(String lastPaymentId) {
		this.lastPaymentId = lastPaymentId;
	}

	public String getLastPaymentDate() {
		return lastPaymentDate;
	}

	public void setLastPaymentDate(String lastPaymentDate) {
		this.lastPaymentDate = lastPaymentDate;
	}

	public int getLastPaymentMoney() {
		return lastPaymentMoney;
	}

	public void setLastPaymentMoney(int lastPaymentMoney) {
		this.lastPaymentMoney = lastPaymentMoney;
	}

	public int getNum_() {
		return num_;
	}

	public void setNum_(int num_) {
		this.num_ = num_;
	}

	public String getMonth_() {
		return month_;
	}

	public void setMonth_(String month_) {
		this.month_ = month_;
	}

	public int getPrice_() {
		return price_;
	}

	public void setPrice_(int price_) {
		this.price_ = price_;
	}

	public String getDay_() {
		return day_;
	}

	public void setDay_(String day_) {
		this.day_ = day_;
	}
	
}
