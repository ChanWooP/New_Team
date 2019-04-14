package com.kiosk.domain;

public class Material {
	private String MaterialId;
	private String CategoryId;
	private String MaterialName;
	
	public Material() {
		
	}

	public Material(String materialId, String categoryId, String materialName) {
		MaterialId = materialId;
		CategoryId = categoryId;
		MaterialName = materialName;
	}

	public String getMaterialId() {
		return MaterialId;
	}

	public void setMaterialId(String materialId) {
		MaterialId = materialId;
	}

	public String getCategoryId() {
		return CategoryId;
	}

	public void setCategoryId(String categoryId) {
		CategoryId = categoryId;
	}

	public String getMaterialName() {
		return MaterialName;
	}

	public void setMaterialName(String materialName) {
		MaterialName = materialName;
	}
	
}
