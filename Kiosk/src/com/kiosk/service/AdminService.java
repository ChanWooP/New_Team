package com.kiosk.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;

import com.kiosk.domain.Category_;
import com.kiosk.domain.DetailPayment;
import com.kiosk.domain.Item;
import com.kiosk.domain.LastPayment;
import com.kiosk.domain.Material;
import com.kiosk.persistance.DAO;

public class AdminService {
	private DAO dao;
	
	public void pw(Scanner sc, DAO daos) {
		this.dao = daos;
		System.out.print("비밀번호>");
		String pws = sc.nextLine();
		String pw = dao.adminpw();
		if(pws.equals(pw)) {
			this.menu99(sc, daos);
		}else {
			System.out.println("비밀번호 틀림");
		}
	}
	
	private void menu99(Scanner sc, DAO daos) {
		while(true) {
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("      관리자 메뉴     ");
			System.out.println("======================");
			System.out.println("1. 메뉴관리");
			System.out.println("2. 일일결산");
			System.out.println("3. 월말결산");
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			
			switch(c) {
			case 1: this.menu99_1(sc); break;
			case 2: this.menu99_2(sc); break;
			case 3: this.menu99_3(sc); break;
			}
		}
	}
	
	private void menu99_1(Scanner sc) {
		while(true) {
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("      메뉴 관리     ");
			System.out.println("======================");
			System.out.println("1. 신 메뉴 추가");
			System.out.println("2. 기존 메뉴 삭제");
			System.out.println("3. 기존 메뉴 가격 변경");
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			
			switch(c) {
			case 1: this.menu99_1_1(sc); break;
			case 2: this.menu99_1_2(sc); break;
			case 3: this.menu99_1_3(sc); break;
			}
		}
	}
	
	private void menu99_1_1(Scanner sc) {
		List<Category_> list = dao.Category_List("", "");
		List<Item> list2 = null;
		List<Material> list3 = null;
		
		System.out.println("카테고리 종류 중 하나를 선택하세요");
		for(Category_ c : list) {
			System.out.printf("%s %s%n",c.getCategoryId(), c.getCategoryName());
		}
		System.out.print("선택>");
		String c1 = sc.nextLine();
		if(c1.equals("C001")) {
			list2 = dao.itemList("sandwitch", "");
		}else if(c1.equals("C002")) {
			list2 = dao.itemList("side", "");
		}else if(c1.equals("C003")) {
			list3 = dao.MaterialList("bread", "");
		}else if(c1.equals("C004")) {
			list3 = dao.MaterialList("vegitable", "");
		}else if(c1.equals("C005")) {
			list3 = dao.MaterialList("souce", "");
		}

		if(c1.equals("C001") || c1.equals("C002")) {
			for(Item i : list2) {
				System.out.printf("%s %s%n", i.getItemId(), i.getItemName());
			}
			
			String itemId = dao.newItemid();
			System.out.print("추가할 메뉴 이름>");
			String itemName = sc.nextLine();
			System.out.print("가격>");
			int price = sc.nextInt();
			sc.nextLine();
			
			dao.newItem(new Item(itemId, c1, itemName, price));
			
		}else if(c1.equals("C003") || c1.equals("C004") || c1.equals("C005")){
			for(Material m : list3) {
				System.out.printf("%s %s%n", m.getMaterialId(), m.getMaterialName());
			}
			String itemId = dao.newMaterialid();
			System.out.print("추가할 메뉴 이름>");
			String itemName = sc.nextLine();
			
			dao.newMaterial(new Material(itemId, c1, itemName));
		}
		System.out.println("메뉴가 추가되었습니다");
		
		
	}
	
	private void menu99_1_2(Scanner sc) {
		List<Category_> list = dao.Category_List("", "");
		List<Item> list2 = null;
		List<Material> list3 = null;
		int count_ = 0;
		System.out.println("카테고리 종류 중 하나를 선택하세요");
		for(Category_ c : list) {
			System.out.printf("%s %s%n",c.getCategoryId(), c.getCategoryName());
		}
		System.out.print("선택>");
		String c1 = sc.nextLine();
		if(c1.equals("C001")) {
			list2 = dao.itemList("sandwitch", "");
		}else if(c1.equals("C002")) {
			list2 = dao.itemList("side", "");
		}else if(c1.equals("C003")) {
			list3 = dao.MaterialList("bread", "");
		}else if(c1.equals("C004")) {
			list3 = dao.MaterialList("vegitable", "");
		}else if(c1.equals("C005")) {
			list3 = dao.MaterialList("souce", "");
		}

		if(c1.equals("C001") || c1.equals("C002")) {
			for(Item i : list2) {
				System.out.printf("%s %s%n", i.getItemId(), i.getItemName());
			}
			System.out.print("선택>");
			String itemId = sc.nextLine();
			
			count_ = dao.detailcount(itemId);
			
			System.out.printf("정말삭제하시겠습니까?(0/1)>");
			int a = sc.nextInt();
			sc.nextLine();
			if(a == 1) {
				if(count_ == 0) {
					dao.DelItem(itemId);
				}
			}else {
				count_ = -1;
			}

			
		}else if(c1.equals("C003") || c1.equals("C004") || c1.equals("C005")){
			for(Material m : list3) {
				System.out.printf("%s %s%n", m.getMaterialId(), m.getMaterialName());
			}
			System.out.print("선택>");
			String itemId = sc.nextLine();
	
			System.out.printf("정말삭제하시겠습니까?(0/1)>");
			int a = sc.nextInt();
			sc.nextLine();
			if(a == 1) {
				if(count_ == 0) {
					dao.DelMaterial(itemId);
				}
			}else {
				count_ = -1;
			}
		}
		if(count_ > 0) {
			System.out.println("삭제할 수 없습니다");
		}else if(count_ == -1){
			System.out.println("삭제 취소");
		}else {
			System.out.println("메뉴가 삭제되었습니다");
		}
	}
	
	private void menu99_1_3(Scanner sc) {
		List<Category_> list = dao.Category_List("", "");
		List<Item> list2 = null;

		int newprice = 0;
		System.out.println("카테고리 종류 중 하나를 선택하세요");
		for(Category_ c : list) {
			if(c.getCategoryId().equals("C001") || c.getCategoryId().equals("C002")) {
				System.out.printf("%s %s%n",c.getCategoryId(), c.getCategoryName());
			}
		}
		System.out.print("선택>");
		String c1 = sc.nextLine();
		if(c1.equals("C001")) {
			list2 = dao.itemList("sandwitch", "");
		}else if(c1.equals("C002")) {
			list2 = dao.itemList("side", "");
		}

		if(c1.equals("C001") || c1.equals("C002")) {
			for(Item i : list2) {
				System.out.printf("%s %s %s%n", i.getItemId(), i.getItemName(), i.getItemPrice());
			}
			System.out.print("선택>");
			String itemId = sc.nextLine();
			
			for(Item i : list2) {
				if(itemId.equals(i.getItemId())) {
					System.out.printf("기존가격 : %d원%n",i.getItemPrice());
				}
			}
			
			System.out.print("변경할 가격>");
			newprice = sc.nextInt();
			sc.nextLine();
			
			dao.ChangeItem(itemId, newprice);
			System.out.println("변경 완료");
		}

	}
	
	private void menu99_2(Scanner sc) {
		while(true) {
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("      일일결산     ");
			System.out.println("======================");
			System.out.println("1. 전일결산");
			System.out.println("2. 금일결산");
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			
			switch(c) {
			case 1: this.menu99_2_1(sc); break;
			case 2: this.menu99_2_2(sc); break;
			}
		}
	}
	
	private void menu99_2_1(Scanner sc) {
		String date = LocalDate.now().minusDays(1).format(DateTimeFormatter.ISO_LOCAL_DATE); 
		List<DetailPayment> list = dao.getDay(date);
		int total = 0;
		
		System.out.println("-------------------------");
		System.out.printf("%s 주문 건수 %d%n", date, dao.getCount(date));
		System.out.println("-------------------------");
		System.out.println("품목별 판매량");
		for(DetailPayment d : list) {
			total += d.getPrice_();
			System.out.printf("%s %d %d%n", d.getItemName(), d.getCnt_(), d.getPrice_());
		}
		System.out.println("-------------------------");
		System.out.printf("총 매출액 %d원", total);
	}
	
	private void menu99_2_2(Scanner sc) {
		String date = LocalDate.now().format(DateTimeFormatter.ISO_LOCAL_DATE);
		List<DetailPayment> list = dao.getDay(date);
		int total = 0;
		
		System.out.println("-------------------------");
		System.out.printf("%s 주문 건수 %d%n", date, dao.getCount(date));
		System.out.println("-------------------------");
		System.out.println("품목별 판매량");
		for(DetailPayment d : list) {
			total += d.getPrice_();
			System.out.printf("%s %d %d%n", d.getItemName(), d.getCnt_(), d.getPrice_());
		}
		System.out.println("-------------------------");
		System.out.printf("총 매출액 %d원", total);
	}
	
	private void menu99_3(Scanner sc) {
		List<LastPayment> list = dao.getMonth();
		
		this.menu99_3_1(sc, list);
	}
	
	private void menu99_3_1(Scanner sc, List<LastPayment> list) {
		int total = 0;
		while(true) {
			System.out.println();
			System.out.println("----------------------");
			System.out.println("뒤로가기 : 0");
			System.out.println("======================");
			System.out.println("      월말결산     ");
			System.out.println("======================");
			for(LastPayment l : list) {
				System.out.printf("%d %s %d%n",l.getNum_(), l.getMonth_(), l.getPrice_());
			}
			System.out.println("----------------------");
			System.out.print("선택>");
			int c = sc.nextInt();
			sc.nextLine();
			
			if(c == 0) break;
			String month_ = "";
			System.out.println("-------------------------");
			for(LastPayment l : list) {
				if(c == l.getNum_()) {
					System.out.printf("%s 주문건수 %d%n", l.getMonth_(), dao.getCount2(l.getMonth_().replace("-", "")));
					month_ = l.getMonth_();
				}
			}
			System.out.println("-------------------------");
			List<LastPayment> list2 = dao.Daytotal(month_);
			for(LastPayment l : list2) {
				System.out.printf("%s %d%n", l.getDay_(), l.getPrice_());
			}
			List<DetailPayment> list3 = dao.getMonth(month_.replace("-", ""));
			System.out.println("-------------------------");
			System.out.println("품목별 판매량");
			for(DetailPayment d : list3) {
				total += d.getPrice_();
				System.out.printf("%s %d %d%n", d.getItemName(), d.getCnt_(), d.getPrice_());
			}
			System.out.println("-------------------------");
			System.out.printf("총 매출액 %d원", total);
		}
	}
}
