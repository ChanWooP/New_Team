package com.kiosk.domain;

import java.util.List;

public class Order {
	private String date_;
	private List<SubOrder> orderList; 
	
	public Order() {
		
	}

	public Order(String date_, List<SubOrder> orderList) {
		super();
		this.date_ = date_;
		this.orderList = orderList;
	}

	public String getDate_() {
		return date_;
	}

	public void setDate_(String date_) {
		this.date_ = date_;
	}

	public List<SubOrder> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<SubOrder> orderList) {
		this.orderList = orderList;
	}
	
}
