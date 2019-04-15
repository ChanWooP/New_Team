package com.kiosk.domain;

import java.util.List;

public class SubOrder {
	private List<Item> item;
	private List<Material> matr;
	private int count;
	
	public SubOrder() {
		
	}

	public SubOrder(List<Item> item, List<Material> matr, int count) {
		super();
		this.item = item;
		this.matr = matr;
		this.count = count;
	}
	
	public List<Item> getItem() {
		return item;
	}
	

	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		String result = "";
		
		for(Item i : item) {
			result += i.getItemName();
		}
		
		if(matr != null) {
			for(Material m : matr) {
				result += " / ";
				result += m.getMaterialName();
			}
		}
		
		result += " " + count;
		
		return result;
	}
	
	
}
