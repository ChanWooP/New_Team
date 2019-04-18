package com.kiosk.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

import com.kiosk.domain.DetailPayment;
import com.kiosk.domain.LastPayment;
import com.kiosk.domain.Payment;
import com.kiosk.domain.PaymentList;
import com.kiosk.domain.Pointhistory;
import com.kiosk.domain.SubOrder;
import com.kiosk.domain.User_;
import com.kiosk.persistance.DAO;

public class PayService {
	private DAO dao;
	
	public void menu03(Scanner sc, DAO daos) {
		this.dao = daos;
		
		while(true) {
			List<SubOrder> sub = dao.getOrder().getOrderList();
			Map<Integer, SubOrder> map = new HashMap<Integer, SubOrder>();
			int index = 0;
			int total = 0;
			
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("    장바구니(결제)       ");
			System.out.println("======================");
			for(SubOrder s : sub) {
				map.put(++index, s);
				total += s.getItem().get(0).getItemPrice() * s.getCount();
				System.out.printf("%d %s%n",index, s.toString());
			}
			index = 0;
			System.out.println("----------------------");
			System.out.printf("총 금액 : %d원%n", total);
			System.out.println("----------------------");
			System.out.println("1.결제하기 2.삭제하기");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			if(c == 1) this.menu03_2(sc);
			if(c == 2) {
				List<SubOrder> list = null;
				map = this.menu03_1(sc, map);
				Set<Integer> keys = map.keySet();
				Iterator<Integer> it = keys.iterator();
				while(it.hasNext()) {
					int key = it.next();
					if(map.get(key).getCount() <= 0) {
						list = dao.getOrder().getOrderList();
						list.remove(key-1);
						break;
					}else {
						list = dao.getOrder().getOrderList();
						list.get(key-1).setCount(map.get(key).getCount());;
					}
				}
				dao.getOrder().setOrderList(list);
			}
		}

	}

	private Map<Integer, SubOrder> menu03_1(Scanner sc, Map<Integer, SubOrder> map) {
		
		Map<Integer, SubOrder> result = map;
		
		System.out.println("삭제할 메뉴의 번호를 입력하세요");
		System.out.print("선택>");
		int num = sc.nextInt();
		sc.nextLine();
		int temp = result.get(num).getCount();
		System.out.println("삭제할 수량을 입력하세요");
		System.out.print("선택>");
		int count = sc.nextInt();
		sc.nextLine();
		System.out.println("정말 삭제하시겠습니까? (YES : 1 / NO : 0)");
		System.out.print("선택>");
		int c = sc.nextInt();
		sc.nextLine();
		
		if(c == 1) {
			result.get(num).setCount(temp - count);
		}else {
			System.out.println("삭제가 취소되었습니다");
		}
		
		return result;
	}
	
	private void menu03_2(Scanner sc) {
		while(true) {
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("    결제 방법 선택       ");
			System.out.println("======================");
			System.out.println("1. 일반 카드 결제");
			System.out.println("2. 포인트 적립 + 결제");
			System.out.println("3. 포인트 사용 결제");
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			
			switch(c) {
			case 1: this.menu03_2_1(sc); break;
			case 2: this.menu03_2_2(sc); break;
			case 3: this.menu03_2_3(sc); break;
			} 
		}
	}
	
	private boolean effectCheck(String key, String value) {
		boolean result = false;
		
		if(key.equals("card") && value.length() == 19) {
			result = true;
		}else if(key.equals("phone") && value.length() == 13) {
			result = true;
		}
		
		return result;
	}
	
	private void menu03_2_1(Scanner sc) {
		
		List<SubOrder> sub = dao.getOrder().getOrderList();
		String pay = "카드";
		
		while(true) {
			System.out.print("카드 번호 입력(0000 0000 0000 0000)>");
			String card = sc.nextLine();
			if(effectCheck("card",card)) {
				break;
			}
			System.out.println("유효하지 않은 카드 번호입니다.");
		}
		this.print_Receipt(sub, pay, 0, "", 0);
		
	}
	
	private void menu03_2_2(Scanner sc) {
		List<SubOrder> sub = dao.getOrder().getOrderList();
		String pay = "포인트적립";
		String phone = "";
		while(true) {
			System.out.print("카드 번호 입력(0000 0000 0000 0000)>");
			String card = sc.nextLine();
			if(effectCheck("card",card)) {
				break;
			}
			System.out.println("유효하지 않은 카드 번호입니다.");
		}
		while(true) {
			System.out.print("핸드폰번호(010-0000-0000)>");
			phone = sc.nextLine();
			if(effectCheck("phone",phone)) {
				break;
			}
			System.out.println("유효하지않는 번호입니다.");
		}
		int point = dao.list_User("phone", phone);		
		
		this.print_Receipt(sub, pay, point, phone, 0);
	}
	
	private void menu03_2_3(Scanner sc) {
		List<SubOrder> sub = dao.getOrder().getOrderList();
		String pay = "포인트사용";
		String phone = "";
		int total = 0;
		
		List<SubOrder> sublist = dao.getOrder().getOrderList();
		
		for(SubOrder s : sublist) {
			total += s.getItem().get(0).getItemPrice() * s.getCount();
		}
		int point = 0;
		int usePoint = 0;
		while(true) {
			while(true) {
				System.out.print("핸드폰번호(010-0000-0000)>");
				phone = sc.nextLine();
				if(phone.equals("0")) {
					return;
				}
				if(effectCheck("phone",phone)) {
					break;
				}
				System.out.println("유효하지않는 번호입니다.");
			}
			point = dao.list_User("phone", phone);
			if(phone.equals("0")) {
				return;
			}
			if(point == -1) {
				System.out.println("없는 번호입니다");
			}else {
				while(true) {
					System.out.printf("적립된 포인트 : %d%n",point);
					System.out.print("사용할 포인트>");
					usePoint = sc.nextInt();
					sc.nextLine();
					if(point < usePoint) {
						System.out.println("적립된 포인트 범위를 벗어났습니다");
					}else {
						break;
					}
				}
				break;
			}
			
		}

		System.out.printf("남은 결제 금액 : %d원%n", total - usePoint);
		while(true) {
			System.out.print("카드 번호 입력(0000 0000 0000 0000)>");
			String card = sc.nextLine();
			if(effectCheck("card",card)) {
				break;
			}
			System.out.println("유효하지 않은 카드 번호입니다.");
		}
		
		this.print_Receipt(sub, pay, point, phone, usePoint);
	}
	
	private void print_Receipt(List<SubOrder> sub, String pay, int point, String phone, int usepoint) {
		int total = 0;
		int idx = 0;
		List<SubOrder> sublist = dao.getOrder().getOrderList();
		List<DetailPayment> d = new ArrayList<DetailPayment>();
		List<Payment> p = new ArrayList<Payment>();
		List<Pointhistory> ph = new ArrayList<Pointhistory>();
		List<PaymentList> pl = dao.list_Payment("", "");
		
		for(SubOrder s : sublist) {
			total += s.getItem().get(0).getItemPrice() * s.getCount();
	
			String itemId = dao.getOrder().getOrderList().get(idx).getItem().get(0).getItemId();
			int price = dao.getOrder().getOrderList().get(idx).getItem().get(0).getItemPrice();
			d.add(new DetailPayment(dao.new_LastPaymentid(),itemId, price * s.getCount(), s.getCount()));
			++idx;
		}
		
		if(point == -1) {
			dao.in_User(new User_(phone, 0));
			point = 0;
		}
		
		if(pay.equals("카드")) {
			p.add(new Payment(dao.new_LastPaymentid(), pl.get(0).getPaymentListId(), total));
		}else if(pay.equals("포인트적립")){
			p.add(new Payment(dao.new_LastPaymentid(), pl.get(0).getPaymentListId(), total));
			ph.add(new Pointhistory(dao.new_LastPaymentid(), pl.get(0).getPaymentListId(), phone, total/10, "적립"));
		}else if(pay.equals("포인트사용")) {
			p.add(new Payment(dao.new_LastPaymentid(), pl.get(1).getPaymentListId(), usepoint));
			ph.add(new Pointhistory(dao.new_LastPaymentid(), pl.get(1).getPaymentListId(), phone, usepoint, "사용"));
			if((total - usepoint) > 0) {
				p.add(new Payment(dao.new_LastPaymentid(), pl.get(0).getPaymentListId(), total - usepoint));
				ph.add(new Pointhistory(dao.new_LastPaymentid(), pl.get(0).getPaymentListId(), phone, (total - usepoint)/10, "적립"));
			}
		}	

		dao.in_Pay(new LastPayment(dao.new_LastPaymentid(),dao.getOrder().getDate_(),total), d, p, ph, point);
		
		if(pay.equals("포인트사용")) {
			System.out.printf("총 %d원 결제되었습니다.%n", total-usepoint);
		}else {
			System.out.printf("총 %d원 결제되었습니다.%n", total);
		}
		
		
		System.out.println("===========영수증=========");
		System.out.printf("날짜 : %s%n", dao.getOrder().getDate_());
		System.out.println("========================");
		for(SubOrder s : sub) {
			System.out.printf("%s %d %d%n", s.getItem().get(0).getItemName()
										, s.getCount()
										, s.getCount() * s.getItem().get(0).getItemPrice());
		}
		System.out.println("========================");
		System.out.printf("총 금액 %d%n", total);
		if(pay.equals("포인트사용")) {
			System.out.printf("포인트사용 %d%n", usepoint);
		}
		System.out.println("========================");
		if(pay.equals("포인트사용")) {
			System.out.printf("결제 금액 %d%n", total - usepoint);
		}else {
			System.out.printf("결제 금액 %d%n", total);
		}
		System.out.println("========================");
		int Inpoint = total / 10;
		if(pay.equals("포인트사용")) {
			Inpoint = (total - usepoint) / 10;
		}
		if(phone != "") {
			System.out.printf("적립금 %d%n", Inpoint);
		}
		
		List<SubOrder> orderList = new ArrayList<SubOrder>();
		dao.getOrder().setOrderList(orderList);
	}
	
}
