package com.kiosk.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.kiosk.domain.Category_;
import com.kiosk.domain.Item;
import com.kiosk.domain.Material;
import com.kiosk.domain.SubOrder;
import com.kiosk.persistance.DAO;

public class SandwitchService {
	
	private DAO dao;
	
	public void menu01(Scanner sc, DAO daos) {
		this.dao = daos;
		List<Item> item = new ArrayList<Item>();
		List<Material> material = new ArrayList<Material>();
		List<Category_> category = dao.list_Category("", "");
		
		Item temp = this.menu01_1(sc, category.get(0).getCategoryId());
		if(temp == null) return;
		item.add(temp);

		Material temp1 = this.menu01_2(sc, category.get(2).getCategoryId());
		if(temp1 == null) return;
		material.add(temp1);
		
		List<Material> temp2 = this.menu01_3(sc, category.get(3).getCategoryId());
		if(temp2 == null) return;
		for(Material m : temp2) {
			material.add(m);
		}
		
		List<Material> temp3 = this.menu01_4(sc, category.get(4).getCategoryId());
		if(temp3 == null) return;
		for(Material m : temp3) {
			material.add(m);
		}
		
		System.out.print("샌드위치 수량>");
		int count = sc.nextInt();
		sc.nextLine();
		
		SubOrder sub = new SubOrder(item, material, count);
		
		dao.getOrder().getOrderList().add(sub);

	}
	
	private Item menu01_1(Scanner sc, String category) {
		List<Item> list = dao.list_Item(category, "");
		Item item = null;
		System.out.println();
		System.out.println("----------------------");
		System.out.println("뒤로가기 : 0");
		System.out.println("======================");
		System.out.println("    샌드위치 선택        ");
		System.out.println("======================");
		System.out.println("품목번호 품목명 가격");
		this.print_item(list);
		System.out.println("----------------------");
		while(true) {
			System.out.print("선택>");
			boolean check = false;
			String itemId = sc.nextLine();
			if(itemId.equals("0")) break;
			for(Item i : list) {
				if(itemId.equals(i.getItemId())) {
					item = i;
					check = true;
				}
			}
			if(check) break;
			System.out.println("존재하지 않는 품목번호입니다.");
		}
		return item;
	}
	
	private Material menu01_2(Scanner sc,String category) {
		List<Material> list = dao.list_Material(category, "");
		Material material = null;
		System.out.println();
		System.out.println("----------------------");
		System.out.println("뒤로가기 : 0");
		System.out.println("======================");
		System.out.println("    빵 선택        ");
		System.out.println("======================");
		System.out.println("재료번호 재료명");
		this.print_Material(list);
		System.out.println("----------------------");
		while(true) {
			System.out.print("선택>");
			boolean check = false;
			String MaterialId = sc.nextLine();
			if(MaterialId.equals("0")) break;
			for(Material m : list) {
				if(MaterialId.equals(m.getMaterialId())) {
					material = m;
					check = true;
				}
			}
			if(check) break;
			System.out.println("존재하지 않는 재료번호입니다.");
		}
		return material;
	}
	
	private List<Material> menu01_3(Scanner sc, String category) {
		List<Material> list = dao.list_Material(category, "");
		String MaterialId = "";
		List<Material> material = new ArrayList<Material>();
		
		while(true) {
		System.out.println();
		System.out.println("----------------------");
		System.out.println("뒤로가기 : 0");
		System.out.println("======================");
		System.out.println("    야채 선택        ");
		System.out.println("======================");
		System.out.println("재료번호 재료명");
		this.print_Material_C(list, material);
		System.out.println("1 선택완료");
		System.out.println("----------------------");
		System.out.println("제외할 야채번호를 선택해주세요.");
		
		if(MaterialId.equals("0") || MaterialId.equals("1")) break;
		while(true) {
			System.out.print("선택>");
			MaterialId = sc.nextLine();
			boolean check = false;
			for(Material m : list) {
				if(MaterialId.equals(m.getMaterialId())) {
					material.add(m);
					check = true;
				}
			}
			if(check || MaterialId.equals("0") || MaterialId.equals("1")) break;
			System.out.println("존재하지 않는 재료번호입니다.");
			}	
		}
		return material;
	}
	
	private List<Material> menu01_4(Scanner sc, String category) {
		List<Material> list = dao.list_Material(category, "");
		String MaterialId = "";
		List<Material> material = new ArrayList<Material>();
		
		while(true) {
		System.out.println();
		System.out.println("----------------------");
		System.out.println("뒤로가기 : 0");
		System.out.println("======================");
		System.out.println("    소스 선택        ");
		System.out.println("======================");
		System.out.println("재료번호 재료명");
		this.print_Material_C(list, material);
		System.out.println("1 선택완료");
		System.out.println("----------------------");
		System.out.println("추가할 소스번호를 선택해주세요.");
		
		if(MaterialId.equals("0") || MaterialId.equals("1")) break;
		while(true) {
			System.out.print("선택>");
			MaterialId = sc.nextLine();
			boolean check = false;
			for(Material m : list) {
				if(MaterialId.equals(m.getMaterialId())) {
					material.add(m);
					check = true;
				}
			}
			if(check || MaterialId.equals("0") || MaterialId.equals("1")) break;
			System.out.println("존재하지 않는 재료번호입니다.");
			}	
		}
		return material;
	}
	
	private void print_item(List<Item> list) {
		for(Item i : list) {
			System.out.printf("%d %s %s %d%n",i.getItemId(), i.getItemName(), i.getItemPrice());
		}
	}
	
	private void print_Material(List<Material> list) {
		for(Material m : list) {
			System.out.printf("%s %s %n",m.getMaterialId(), m.getMaterialName());
		}
	}
	
	private void print_Material_C(List<Material> list, List<Material> material) {
		for(Material m : list) {
			System.out.printf("%s %s",m.getMaterialId(), m.getMaterialName());
			for(Material m2 : material) {
				if(m2.getMaterialId().equals(m.getMaterialId())) {
					System.out.printf(" %s","V");
				}
			}
			System.out.println();
		}
	}

}
