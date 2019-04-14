package com.kiosk.domain;

public class Category_ {
	private String CategoryId;
	private String CategoryName;
	
	public Category_() {
		
	}

	public Category_(String categoryId, String categoryName) {
		CategoryId = categoryId;
		CategoryName = categoryName;
	}

	public String getCategoryId() {
		return CategoryId;
	}

	public void setCategoryId(String categoryId) {
		CategoryId = categoryId;
	}

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}
	
	
}
