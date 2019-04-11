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
    ,ItemList VARCHAR2(20) -- 품목종류
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
    ,MaterialList VARCHAR2(20) -- 재료종류
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
    ,lastPaymentDat DATE --결제날짜
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
    ,UserId VARCHAR2(4) --FK 회원ID
    ,Point NUMBER -- 포인트 금액
    ,Gubun VARCHAR2(5) -- 구분
);
ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_HistoryId_PK PRIMARY KEY(PointHistoryId);
    
--------------------------------------------------------------------------
-- 사용자 테이블
CREATE TABLE user_(
    UserId VARCHAR2(4) --PK 회원ID
    ,UserPhone VARCHAR2(20) --회원 연락처
    ,UserPoint VARCHAR(20) -- 회원 포인트
);
ALTER TABLE User_
    ADD CONSTRAINT User_UserId_PK PRIMARY KEY(UserId);
    
-- 관리자 테이블
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.관리자ID
    ,adminPw VARCHAR2(20) --관리자PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);




