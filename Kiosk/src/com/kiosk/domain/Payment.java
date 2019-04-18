package com.kiosk.domain;

public class Payment {
	private String lastPaymentId; 
	private String paymentListId; 
	private int paymentMoney; 
	
	public Payment() {
		
	}

	public Payment(String lastPaymentId, String paymentListId, int paymentMoney) {
		this.lastPaymentId = lastPaymentId;
		this.paymentListId = paymentListId;
		this.paymentMoney = paymentMoney;
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

	public int getPaymentMoney() {
		return paymentMoney;
	}

	public void setPaymentMoney(int paymentMoney) {
		this.paymentMoney = paymentMoney;
	}
	
}
