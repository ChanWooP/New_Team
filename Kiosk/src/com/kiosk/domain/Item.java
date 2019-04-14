package com.kiosk.domain;

public class Item {
	private String ItemId;
	private String CategoryId;
	private String ItemName;
	private int ItemPrice;
	
	public Item() {
		
	}

	public Item(String itemId, String categoryId, String itemName, int itemPrice) {
		ItemId = itemId;
		CategoryId = categoryId;
		ItemName = itemName;
		ItemPrice = itemPrice;
	}

	public String getItemId() {
		return ItemId;
	}

	public void setItemId(String itemId) {
		ItemId = itemId;
	}

	public String getCategoryId() {
		return CategoryId;
	}

	public void setCategoryId(String categoryId) {
		CategoryId = categoryId;
	}

	public String getItemName() {
		return ItemName;
	}

	public void setItemName(String itemName) {
		ItemName = itemName;
	}

	public int getItemPrice() {
		return ItemPrice;
	}

	public void setItemPrice(int itemPrice) {
		ItemPrice = itemPrice;
	}
	
}
