package com.kiosk.domain;

public class Payment {
	private String LastPaymentId; 
	private String PaymentListId; 
	private int PaymentMoney; 
	
	public Payment() {
		
	}

	public Payment(String lastPaymentId, String paymentListId, int paymentMoney) {
		LastPaymentId = lastPaymentId;
		PaymentListId = paymentListId;
		PaymentMoney = paymentMoney;
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

	public int getPaymentMoney() {
		return PaymentMoney;
	}

	public void setPaymentMoney(int paymentMoney) {
		PaymentMoney = paymentMoney;
	}
	
}
