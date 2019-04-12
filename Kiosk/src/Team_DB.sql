-- ī�װ� ���̺�
CREATE TABLE Category_(
    CategoryId VARCHAR2(4) -- ī�װ�ID PK
    ,CategoryName VARCHAR2(20) -- ī�װ���
);

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '������ġ');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '���̵�');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '��');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '��ä');

INSERT INTO Category_ (CategoryId, CategoryName)
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId), 4), 0) + 1, 3, 0)) AS newId FROM Category_), '�ҽ�');
COMMIT;

ALTER TABLE Category_
    ADD CONSTRAINT Category_Id_PK PRIMARY KEY(CategoryId);

-- ǰ�� ���̺�
CREATE TABLE Item(
    ItemId VARCHAR2(4) -- ǰ��ID PK
    ,CategoryId VARCHAR2(4) -- ī�װ�ID FK
    ,ItemName VARCHAR2(20) -- ǰ���
    ,ItemPrice NUMBER -- ǰ�񰡰�
);
ALTER TABLE Item
    ADD CONSTRAINT Item_Id_PK PRIMARY KEY(ItemId);

ALTER TABLE Item
	ADD CONSTRAINT Item_CategoryId_FK 
			FOREIGN KEY(CategoryId)
			REFERENCES Category_(CategoryId);

INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','���׸���',5000);
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','������ũ',4000);
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','��Ű',5500);
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C001','������',6000);

INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','����',1000);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','����+��Ű ��Ʈ',1500);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','��Ű',1000);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','����',1000);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','�����Ʈ',1500);
COMMIT;
INSERT INTO Item (ItemId, CategoryId,ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId), 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
, 'C002','��������',3000);
COMMIT;

-- ��� ���̺�
CREATE TABLE Material(
    MaterialId VARCHAR2(4) -- ���ID PK
    ,CategoryId VARCHAR2(4) -- ī�װ�ID FK
    ,MaterialName VARCHAR2(20) -- ����
);
ALTER TABLE Material
    ADD CONSTRAINT Material_Id_PK PRIMARY KEY(MaterialId);

ALTER TABLE Material
	ADD CONSTRAINT Material_CategoryId_FK 
			FOREIGN KEY(CategoryId)
			REFERENCES Category_(CategoryId);
            
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','�÷�');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','ȭ��Ʈ');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','��Ͽ�Ʈ');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C003','�ĸ���');

INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','�Ǹ�');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','����');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','�ø���');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','�Ҷ��Ǵ�');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C004','�����');

INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','��ĥ��');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','��ġ');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','����Ʈ��Ͼ�');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','����Ʈĥ��');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','�ٺ�ť');
INSERT INTO Material (MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId), 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
, 'C005','�ӽ�Ÿ��');
COMMIT;  
-----------------------------------------------------------------------
-- ������������ ���̺�
CREATE TABLE LastPayment (
    lastPaymentId VARCHAR2(4) --PK.��������ID
    ,lastPaymentDate DATE --������¥
    ,lastPaymentMoney NUMBER --�Ѱ����ݾ�
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

-- ����������� ���̺�
CREATE TABLE detailPayment (
    detailPaymentId VARCHAR2(4), --�����󼼳���ID, PK
    lastPaymentId VARCHAR2(4), --��������ID, FK
    itemId VARCHAR2(4), --ǰ��ID, FK
    price NUMBER, --�ǸŰ���
    Cnt NUMBER --ǰ�񰹼�
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

-- �������� ���̺�
CREATE TABLE Payment (
    lastPaymentId VARCHAR2(4) --PK.FK.��������ID
    ,PaymentListId VARCHAR2(4) --PK.FK.��������ID
    ,PaymentMoney NUMBER --�����ݾ�
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

-- �������� ���̺�
CREATE TABLE paymentList(
    paymentListId VARCHAR2(4), --��������ID, PK
    paymentListName VARCHAR2(20) --����������
);

ALTER TABLE paymentList
    ADD CONSTRAINT paymentListId_pk PRIMARY KEY(paymentListId);

INSERT INTO paymentList(paymentListId, paymentListName)
VALUES((SELECT CONCAT('A', LPAD(NVL(SUBSTR(MAX(paymentListId), 4), 0) + 1, 3, 0)) AS paymentListId FROM paymentList)
, 'ī��');
INSERT INTO paymentList(paymentListId, paymentListName)
VALUES((SELECT CONCAT('A', LPAD(NVL(SUBSTR(MAX(paymentListId), 4), 0) + 1, 3, 0)) AS paymentListId FROM paymentList)
, '����Ʈ');
COMMIT;

-- ����Ʈ�����丮 ���̺�
CREATE TABLE PointHistory(
    PointHistoryId VARCHAR2(4) --PK HistoryId
    ,LastPaymentId VARCHAR2(4) --FK ���系��ID
    ,PaymentListId VARCHAR2(4) --FK ��������ID
    ,UserId VARCHAR2(4) --FK ȸ��ID
    ,Point_ NUMBER -- ����Ʈ �ݾ�
    ,Gubun VARCHAR2(10) -- ����
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
,'L001','A001','U001',10000,'����');
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserId, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId), 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L002','A002','U001',5000,'���');
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserId, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId), 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L002','A001','U001',5000,'����');
COMMIT;

--------------------------------------------------------------------------
-- ����� ���̺�
CREATE TABLE user_(
    UserId VARCHAR2(4) --PK ȸ��ID
    ,UserPhone VARCHAR2(20) --ȸ�� ����ó
    ,UserPoint VARCHAR(20) -- ȸ�� ����Ʈ
);
ALTER TABLE User_
    ADD CONSTRAINT User_UserId_PK PRIMARY KEY(UserId);

INSERT INTO user_(UserId, UserPhone, UserPoint)
VALUES((SELECT CONCAT('U', LPAD(NVL(SUBSTR(MAX(UserId), 4), 0) + 1, 3, 0)) AS UserId FROM user_)
, '010-1111-1111', '5000');

-- ������ ���̺�
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.������ID
    ,adminPw VARCHAR2(20) --������PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);
 
INSERT INTO Admin_(adminId, adminPw)
VALUES('admin','1234');
commit;