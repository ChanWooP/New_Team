-- 카테고리 테이블
CREATE TABLE Category_(
    CategoryId VARCHAR2(4) -- 카테고리ID PK
    ,CategoryName VARCHAR2(20) -- 카테고리명
);

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '샌드위치');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '사이드');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '빵');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '야채');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '소스');
COMMIT;

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

INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','에그마요',5000);
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','폴더포크',4000);
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','터키',5500);
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','쉬림프',6000);

INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','음료',1000);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','음료+쿠키 세트',1500);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','쿠키',1000);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','과자',1000);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','더블미트',1500);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','웨지감자',3000);
COMMIT;

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
            
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','플랫');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','화이트');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','허니오트');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','파마산');

INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','피망');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','양파');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','올리브');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','할라피뇨');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','양상추');

INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','핫칠리');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','랜치');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','스위트어니언');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','스위트칠리');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','바베큐');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','머스타드');
COMMIT;  
-----------------------------------------------------------------------
-- 최종결제내역 테이블
CREATE TABLE LastPayment (
    lastPaymentId VARCHAR2(4) --PK.결제내역ID
    ,lastPaymentDate DATE --결제날짜
    ,lastPaymentMoney NUMBER --총결제금액
);

ALTER TABLE LastPayment
   ADD CONSTRAINT LastPayment_pk PRIMARY KEY(lastPaymentId);  

INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId), 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
, '2019-03-01', 10000);
INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId), 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
, '2019-03-02', 10000);
INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId), 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
, SYSDATE, 10000);
Commit;

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

INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L001', 'I001', 5000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L001', 'I007', 1000, 5);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L002', 'I001', 5000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L002', 'I002', 4000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L002', 'I005', 1000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L003', 'I001', 5000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId), 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L003', 'I005', 1000, 5);
commit;

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

INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L001', 'A001', 10000);
INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L002', 'A001', 5000);
INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L002', 'A002', 5000);
INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L003', 'A001', 10000);
commit;

-- 결제종류 테이블
CREATE TABLE paymentList(
    paymentListId VARCHAR2(4), --결제종류ID, PK
    paymentListName VARCHAR2(20) --결제종류명
);

ALTER TABLE paymentList
    ADD CONSTRAINT paymentListId_pk PRIMARY KEY(paymentListId);

INSERT INTO paymentList(paymentListId, paymentListName)
VALUES((SELECT CONCAT('A', LPAD(NVL(SUBSTR(MAX(paymentListId), 4), 0) + 1, 3, 0)) AS paymentListId FROM paymentList)
, '카드');
INSERT INTO paymentList(paymentListId, paymentListName)
VALUES((SELECT CONCAT('A', LPAD(NVL(SUBSTR(MAX(paymentListId), 4), 0) + 1, 3, 0)) AS paymentListId FROM paymentList)
, '포인트');
COMMIT;

-- 포인트히스토리 테이블
CREATE TABLE PointHistory(
    PointHistoryId VARCHAR2(4) --PK HistoryId
    ,LastPaymentId VARCHAR2(4) --FK 결재내역ID
    ,PaymentListId VARCHAR2(4) --FK 결제종류ID
    ,UserId VARCHAR2(4) --FK 회원ID
    ,Point_ NUMBER -- 포인트 금액
    ,Gubun VARCHAR2(10) -- 구분
);

ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_HistoryId_PK PRIMARY KEY(PointHistoryId);
ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_UserId_FK FOREIGN KEY(UserId) REFERENCES User_(UserId);
ALTER TABLE PointHistory    
    ADD CONSTRAINT PointHistory_LastPaymentId_FK FOREIGN KEY(LastPaymentId, PaymentListId) 
    REFERENCES Payment(LastPaymentId, PaymentListId);
    
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserId, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId), 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L001','A001','U001',10000,'적립');
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserId, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId), 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L002','A002','U001',5000,'사용');
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserId, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId), 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L002','A001','U001',5000,'적립');
COMMIT;

--------------------------------------------------------------------------
-- 사용자 테이블
CREATE TABLE user_(
    UserId VARCHAR2(4) --PK 회원ID
    ,UserPhone VARCHAR2(20) --회원 연락처
    ,UserPoint VARCHAR(20) -- 회원 포인트
);
ALTER TABLE User_
    ADD CONSTRAINT User_UserId_PK PRIMARY KEY(UserId);

INSERT INTO user_(UserId, UserPhone, UserPoint)
VALUES((SELECT CONCAT('U', LPAD(NVL(SUBSTR(MAX(UserId), 4), 0) + 1, 3, 0)) AS UserId FROM user_)
, '010-1111-1111', '5000');

-- 관리자 테이블
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.관리자ID
    ,adminPw VARCHAR2(20) --관리자PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);
 
INSERT INTO Admin_(adminId, adminPw)
VALUES('admin','1234');
commit;