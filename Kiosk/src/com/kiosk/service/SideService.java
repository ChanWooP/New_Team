package com.kiosk.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.kiosk.domain.Item;
import com.kiosk.domain.SubOrder;
import com.kiosk.persistance.DAO;

public class SideService {
	
	private DAO dao;
	
	public void menu02(Scanner sc, DAO daos) {
		this.dao = daos;
		List<Item> list = dao.itemList("side", "");
		List<Item> item = new ArrayList<Item>();
		
		System.out.println();
		System.out.println("----------------------");
		System.out.println("뒤로가기 : 0");
		System.out.println("======================");
		System.out.println("    사이드 선택        ");
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
					item.add(i);
					check = true;
				}
			}
			if(check) break;
			System.out.println("존재하지 않는 품목번호입니다.");
		}
		
		if(item.size() != 0) {
			System.out.print("사이드 수량>");
			int count = sc.nextInt();
			sc.nextLine();
			
			SubOrder sub = new SubOrder(item, null, count);
			dao.getOrder().getOrderList().add(sub);
		}
		
	}
	
	private void print_item(List<Item> list) {
		for(Item i : list) {
			System.out.printf("%s %s %d%n",i.getItemId(), i.getItemName(), i.getItemPrice());
		}
	}
}
