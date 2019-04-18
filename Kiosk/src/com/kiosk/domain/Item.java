package com.kiosk.domain;

public class Item {
	private String itemId;
	private String categoryId;
	private String itemName;
	private int itemPrice;
	
	public Item() {
		
	}

	public Item(String itemId, String categoryId, String itemName, int itemPrice) {
		this.itemId = itemId;
		this.categoryId = categoryId;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	
}
