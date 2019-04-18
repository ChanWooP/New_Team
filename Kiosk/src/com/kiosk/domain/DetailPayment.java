package com.kiosk.domain;

public class DetailPayment {
	private String detailePaymentId;
	private String lastPaymentId;
	private String itemId;
	private int price;
	private int cnt;
	private String itemName;
	private int price_;
	private int cnt_;
	
	public DetailPayment() {
		
	}

	public DetailPayment(String lastPaymentId, String itemId, int price, int cnt) {
		this.lastPaymentId = lastPaymentId;
		this.itemId = itemId;
		this.price = price;
		this.cnt = cnt;
	}
	
	public DetailPayment(String detailePaymentId, String lastPaymentId, String itemId, int price, int cnt) {
		this.detailePaymentId = detailePaymentId;
		this.lastPaymentId = lastPaymentId;
		this.itemId = itemId;
		this.price = price;
		this.cnt = cnt;
	}

	public DetailPayment(String itemName, int price_, int cnt_) {
		this.itemName = itemName;
		this.price_ = price_;
		this.cnt_ = cnt_;
	}

	public String getDetailePaymentId() {
		return detailePaymentId;
	}

	public void setDetailePaymentId(String detailePaymentId) {
		this.detailePaymentId = detailePaymentId;
	}

	public String getLastPaymentId() {
		return lastPaymentId;
	}

	public void setLastPaymentId(String lastPaymentId) {
		this.lastPaymentId = lastPaymentId;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getPrice_() {
		return price_;
	}

	public void setPrice_(int price_) {
		this.price_ = price_;
	}

	public int getCnt_() {
		return cnt_;
	}

	public void setCnt_(int cnt_) {
		this.cnt_ = cnt_;
	}
	
}
