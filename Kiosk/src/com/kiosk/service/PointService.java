package com.kiosk.service;

import java.util.List;
import java.util.Scanner;

import com.kiosk.domain.Pointhistory;
import com.kiosk.persistance.DAO;

public class PointService {
	private DAO dao;
	
	public void menu04(Scanner sc, DAO daos) {
		this.dao = daos;
		while(true) {
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("    회원포인트 조회        ");
			System.out.println("======================");
			System.out.println("1. 포인트 내역 조회");
			System.out.println("2. 포인트 잔액 조회");
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			
			switch(c) {
			case 1: this.menu04_1(sc); break; 
			case 2: this.menu04_2(sc); break;
			}
		}
	}
	
	private boolean effectCheck(String value) {
		boolean result = false;
		
		if(value.length() == 13) {
			result = true;
		}
		
		return result;
	}
	
	private void menu04_1(Scanner sc) {
		String phone = "";
		
		while(true) {
			while(true) {
				System.out.print("핸드폰번호(010-0000-0000)>");
				phone = sc.nextLine();
				if(phone.equals("0")) {
					return;
				}
				if(effectCheck(phone)) {
					break;
				}
				System.out.println("유효하지않는 번호입니다.");
			}
			List<Pointhistory> ph = dao.list_UserHistory("phone", phone);
			if(ph.size() != 0) {
				System.out.println("날짜 / 전화번호 / 사용금액 / 구분");
				for(Pointhistory p : ph) {
					System.out.printf("%s / %s / %d / %s%n"
							,p.getLastPaymentDate(), p.getUserphone()
							,p.getPoint_(), p.getGubun());
				}
				break;
			}
			System.out.println("없는 번호 입니다");
		}
		
	}
	
	private void menu04_2(Scanner sc) {
		String phone = "";
		
		while(true) {
			while(true) {
				System.out.print("핸드폰번호(010-0000-0000)>");
				phone = sc.nextLine();
				if(phone.equals("0")) {
					return;
				}
				if(effectCheck(phone)) {
					break;
				}
				System.out.println("유효하지않는 번호입니다.");
			}
			int point = dao.list_User("phone", phone);
			if(point != -1) {
				System.out.printf("현재 남은 잔액은 %d원 입니다", point);
				break;
			}
			System.out.println("없는 번호 입니다");
		}
	}
}
