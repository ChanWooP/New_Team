package com.kiosk.domain;

public class LastPayment {
	private String LastPaymentId;
	private String LastPaymentDate;
	private int LastPaymentMoney;
	private int num_;
	private String month_;
	private int price_;
	private String day_;
	
	public LastPayment() {
	
	}

	public LastPayment(int price_, String day_) {
		this.price_ = price_;
		this.day_ = day_;
	}



	public LastPayment(String lastPaymentId, String lastPaymentDate, int lastPaymentMoney) {
		LastPaymentId = lastPaymentId;
		LastPaymentDate = lastPaymentDate;
		LastPaymentMoney = lastPaymentMoney;
	}



	public LastPayment(int num_, String month_, int price_) {
		this.num_ = num_;
		this.month_ = month_;
		this.price_ = price_;
	}

	public String getLastPaymentId() {
		return LastPaymentId;
	}

	public void setLastPaymentId(String lastPaymentId) {
		LastPaymentId = lastPaymentId;
	}

	public String getLastPaymentDate() {
		return LastPaymentDate;
	}

	public void setLastPaymentDate(String lastPaymentDate) {
		LastPaymentDate = lastPaymentDate;
	}

	public int getLastPaymentMoney() {
		return LastPaymentMoney;
	}

	public void setLastPaymentMoney(int lastPaymentMoney) {
		LastPaymentMoney = lastPaymentMoney;
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
