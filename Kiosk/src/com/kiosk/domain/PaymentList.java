package com.kiosk.domain;

public class PaymentList {
	private String paymentListId;
	private String paymentListName;
	
	public PaymentList() {
		
	}

	public PaymentList(String paymentListId, String paymentListName) {
		this.paymentListId = paymentListId;
		this.paymentListName = paymentListName;
	}

	public String getPaymentListId() {
		return paymentListId;
	}

	public void setPaymentListId(String paymentListId) {
		this.paymentListId = paymentListId;
	}

	public String getPaymentListName() {
		return paymentListName;
	}

	public void setPaymentListName(String paymentListName) {
		this.paymentListName = paymentListName;
	}
	
	
	
}
