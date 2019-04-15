package com.kiosk.main;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.kiosk.domain.SubOrder;
import com.kiosk.persistance.DAO;
import com.kiosk.service.AdminService;
import com.kiosk.service.PayService;
import com.kiosk.service.PointService;
import com.kiosk.service.SandwitchService;
import com.kiosk.service.SideService;

public class Main {

	public static void main(String[] args) {
		String date = LocalDate.now().format(DateTimeFormatter.ISO_LOCAL_DATE);
		List<SubOrder> sub = new ArrayList<SubOrder>();
		DAO dao = new DAO(date, sub);
		
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			System.out.println();
			System.out.println("======================");
			System.out.println("    서브웨이 무인주문기        ");
			System.out.println("======================");
			System.out.println("1. 샌드위치 주문");
			System.out.println("2. 사이드 주문");
			System.out.println("3. 장바구니(결제)");
			System.out.println("4. 회원포인트 조회");
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			
			switch(c) {
			case 1: new SandwitchService().menu01(sc, dao); break;
			case 2: new SideService().menu02(sc, dao); break;
			case 3: new PayService().menu03(sc, dao); break;
			case 4: new PointService().menu04(sc, dao); break;
			case 99: new AdminService().pw(sc, dao); break;
			}
			
		}
		sc.close();
		System.out.println("프로그램 종료");
	}

}
