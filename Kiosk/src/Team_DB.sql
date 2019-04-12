-- 카테고리 테이블
CREATE TABLE Category_(
    CategoryId VARCHAR2(4) -- 카테고리ID PK
    ,CategoryName VARCHAR2(20) -- 카테고리명
);

ALTER TABLE Category_
    ADD CONSTRAINT Category_Id_PK PRIMARY KEY(CategoryId);

-- 품목 테이블
CREATE TABLE Item(
    ItemId VARCHAR2(4) -- 품목ID PK
    ,CategoryId VARCHAR2(4) -- 카테고리ID FK
    ,ItemName VARCHAR2(20) -- 품목명
    ,ItemPrice NUMBER -- 품목가격
);
ALTER TABLE Item
    ADD CONSTRAINT Item_Id_PK PRIMARY KEY(ItemId);

ALTER TABLE Item
	ADD CONSTRAINT Item_CategoryId_FK 
			FOREIGN KEY(CategoryId)
			REFERENCES Category_(CategoryId);

-- 재료 테이블
CREATE TABLE Material(
    MaterialId VARCHAR2(4) -- 재료ID PK
    ,CategoryId VARCHAR2(4) -- 카테고리ID FK
    ,MaterialName VARCHAR2(20) -- 재료명
);
ALTER TABLE Material
    ADD CONSTRAINT Material_Id_PK PRIMARY KEY(MaterialId);

ALTER TABLE Material
	ADD CONSTRAINT Material_CategoryId_FK 
			FOREIGN KEY(CategoryId)
			REFERENCES Category_(CategoryId);
              
-----------------------------------------------------------------------
-- 최종결제내역 테이블
CREATE TABLE LastPayment (
    lastPaymentId VARCHAR2(4) --PK.결제내역ID
    ,lastPaymentDate DATE --결제날짜
    ,lastPaymentMoney NUMBER --총결제금액
);

ALTER TABLE LastPayment
   ADD CONSTRAINT LastPayment_pk PRIMARY KEY(lastPaymentId);  

-- 결제상새내역 테이블
CREATE TABLE detailPayment (
    detailPaymentId VARCHAR2(4), --결제상세내역ID, PK
    lastPaymentId VARCHAR2(4), --결제내역ID, FK
    itemId VARCHAR2(4), --품목ID, FK
    price NUMBER, --판매가격
    Cnt NUMBER --품목갯수
);

ALTER TABLE detailPayment
    ADD CONSTRAINT detailPayment_pk PRIMARY KEY(detailPaymentId);

ALTER TABLE detailPayment
    ADD CONSTRAINT lastPaymentId_fk FOREIGN KEY(lastPaymentId)
    REFERENCES lastPayment(lastPaymentId);
ALTER TABLE detailPayment
    ADD CONSTRAINT itemId_fk FOREIGN KEY(itemId)
    REFERENCES Item(itemId);

-- 결제내역 테이블
CREATE TABLE Payment (
    lastPaymentId VARCHAR2(4) --PK.FK.결제내역ID
    ,PaymentListId VARCHAR2(4) --PK.FK.결제종류ID
    ,PaymentMoney NUMBER --결제금액
);
ALTER TABLE Payment
    ADD CONSTRAINT Payment_pk PRIMARY KEY(lastPaymentId, paymentListId);
 
 ALTER TABLE Payment
    ADD CONSTRAINT Payment_fk FOREIGN KEY(lastPaymentId)
    REFERENCES LastPayment(lastPaymentId);
ALTER TABLE Payment
    ADD CONSTRAINT Payment_paymentListId_fk FOREIGN KEY(paymentListId)
    REFERENCES PaymentList(paymentListId);

-- 결제종류 테이블
CREATE TABLE paymentList(
    paymentListId VARCHAR2(4), --결제종류ID, PK
    paymentListName VARCHAR2(20) --결제종류명
);

ALTER TABLE paymentList
    ADD CONSTRAINT paymentListId_pk PRIMARY KEY(paymentListId);


-- 포인트히스토리 테이블
CREATE TABLE PointHistory(
    PointHistoryId VARCHAR2(4) --PK HistoryId
    ,LastPaymentId VARCHAR2(4) --FK 결재내역ID
    ,PaymentListId VARCHAR2(4) --FK 결제종류ID
    ,UserPhone VARCHAR2(20) --FK 회원 전화번호
    ,Point_ NUMBER -- 포인트 금액
    ,Gubun VARCHAR2(10) -- 구분
);

ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_HistoryId_PK PRIMARY KEY(PointHistoryId);
ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_UserPhone_FK FOREIGN KEY(UserPhone) REFERENCES User_(UserPhone);
ALTER TABLE PointHistory    
    ADD CONSTRAINT PointHistory_LastPaymentId_FK FOREIGN KEY(LastPaymentId, PaymentListId) 
    REFERENCES Payment(LastPaymentId, PaymentListId);


--------------------------------------------------------------------------
-- 사용자 테이블
CREATE TABLE user_(
    UserPhone VARCHAR2(20) -- PK회원 연락처
    ,UserPoint VARCHAR(20) -- 회원 포인트
);

ALTER TABLE User_
    ADD CONSTRAINT User_UserPhone_PK PRIMARY KEY(UserPhone);
ALTER TABLE User_
    ADD CONSTRAINT User_UserPhone_PK PRIMARY KEY(UserPhone);

-- 관리자 테이블
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.관리자ID
    ,adminPw VARCHAR2(20) --관리자PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);
 
------------------------------------------------------------------------------------------------

/*
번호 자동증가 방법
SELECT CONCAT('구분자', LPAD(NVL(SUBSTR(MAX(테이블id),2, 4), 0) + 1, 3, 0)) AS 테이블id FROM 테이블;
*/
--예시)
SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(itemid),2, 4), 0) + 1, 3, 0)) AS itemid FROM item;

------------------------------------------------------------------------------------------------

--1.샌드위치 주문
--1.샌드위치 주문 / 샌드위치 종류 주문
SELECT itemid, categoryid, itemname, itemprice
    FROM Item
    WHERE categoryid = 'C001'
    ORDER BY itemid;
--1.샌드위치 주문 / 빵 주문
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE categoryid = 'C003'
    ORDER BY MaterialId;
--1.샌드위치 주문 / 야채 주문
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE categoryid = 'C004'
    ORDER BY MaterialId;
--1.샌드위치 주문 / 소스 주문
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE categoryid = 'C005'
    ORDER BY MaterialId;

--2.사이드주문
SELECT itemId, categoryId, Itemname, itemPrice
FROM item
WHERE categoryId = 'C002'
ORDER BY itemId;

--3.장바구니(결제)
SELECT userPoint
FROM user_
WHERE userPhone = '010-1111-1111';
--3.장바구니(결제) / 일반결제
--3.장바구니(결제) / 포인트 적립
--3.장바구니(결제) / 포인트 결제

--4. 포인트내역 / 회원포인트 조회
--4. 포인트내역 / 회원포인트 조회 / 포인트 내역 조회
SELECT l.LastPaymentDate, p.userphone, p.Point_, p.Gubun
    FROM PointHistory p, Payment p1, User_ u, LastPayment l
    WHERE p.lastpaymentid = p1.lastpaymentid
    AND p.paymentlistid = p1.paymentlistid
    AND p.userphone = u.userphone
    AND l.lastpaymentid = p1.lastpaymentid
    AND p.userphone = '010-1111-1111';

--4. 포인트내역 / 회원포인트 조회 / 포인트 잔액 조회
SELECT userPoint
FROM user_
WHERE userPhone = '010-1111-1111';

--99.관리자메뉴
--99.관리자메뉴 / 1.메뉴관리 
SELECT CategoryId, CategoryName 
    FROM Category_;
SELECT ItemId, CategoryId, ItemName, ItemPrice
    FROM Item
    WHERE CategoryId = 'C001';
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE CategoryId = 'C004';
--99.관리자메뉴 / 1.메뉴관리 / 1.신 메뉴 추가
--99.관리자메뉴 / 1.메뉴관리 / 2.기존 메뉴 삭제
--99.관리자메뉴 / 1.메뉴관리 / 3. 기존 메뉴 가격 변경

--99.관리자메뉴 / 2. 일일결산
SELECT COUNT(*)
    FROM LastPayment 
    WHERE LastPaymentDate = '20190301';

SELECT i.itemname, total.cnt_, total.price_
FROM item i
    ,(SELECT d.itemid, sum(d.price) price_, sum(d.cnt) cnt_
        FROM LastPayment l, detailPayment d
        WHERE l.LastPaymentId = d.LastPaymentId
        AND l.LastPaymentDate = '20190301'
        GROUP BY d.itemid) total
WHERE i.itemid = total.itemid;
--99.관리자메뉴 / 2. 일일결산 / 1.전일결산
--99.관리자메뉴 / 2. 일일결산 / 2.금일결산

--99.관리자메뉴 / 3. 월말결산 
SELECT RANK() OVER(ORDER BY TO_CHAR(LastPaymentDate,'YYYY-MM')) num_
        ,TO_CHAR(LastPaymentDate,'YYYY-MM') month_, SUM(lastpaymentmoney) price_
    FROM LastPayment
    GROUP BY TO_CHAR(LastPaymentDate,'YYYY-MM');
--99.관리자메뉴 / 3. 월말결산  / 달 선택 시
SELECT COUNT(*)
    FROM LastPayment 
    WHERE TO_CHAR(LastPaymentDate,'YYYYMM') = '201903';

SELECT i.itemname, total.cnt_, total.price_
FROM item i
    ,(SELECT d.itemid, sum(d.price) price_, sum(d.cnt) cnt_
        FROM LastPayment l, detailPayment d
        WHERE l.LastPaymentId = d.LastPaymentId
        AND TO_CHAR(l.LastPaymentDate,'YYYYMM') = '201903'
        GROUP BY d.itemid) total
WHERE i.itemid = total.itemid;
