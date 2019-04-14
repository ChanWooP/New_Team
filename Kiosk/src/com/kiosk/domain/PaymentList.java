package com.kiosk.domain;

public class PaymentList {
	private String PaymentListId;
	private String PaymentListName;
	
	public PaymentList() {
		
	}

	public PaymentList(String paymentListId, String paymentListName) {
		PaymentListId = paymentListId;
		PaymentListName = paymentListName;
	}

	public String getPaymentListId() {
		return PaymentListId;
	}

	public void setPaymentListId(String paymentListId) {
		PaymentListId = paymentListId;
	}

	public String getPaymentListName() {
		return PaymentListName;
	}

	public void setPaymentListName(String paymentListName) {
		PaymentListName = paymentListName;
	}
	
	
	
}
