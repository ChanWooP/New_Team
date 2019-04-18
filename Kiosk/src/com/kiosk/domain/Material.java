package com.kiosk.domain;

public class Material {
	private String materialId;
	private String categoryId;
	private String materialName;
	
	public Material() {
		
	}

	public Material(String materialId, String categoryId, String materialName) {
		this.materialId = materialId;
		this.categoryId = categoryId;
		this.materialName = materialName;
	}

	public String getMaterialId() {
		return materialId;
	}

	public void setMaterialId(String materialId) {
		this.materialId = materialId;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getMaterialName() {
		return materialName;
	}

	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}
	
}
