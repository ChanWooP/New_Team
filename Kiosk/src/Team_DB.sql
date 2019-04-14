-- ī�װ� ���̺�
CREATE TABLE Category_(
    CategoryId VARCHAR2(4) -- ī�װ�ID PK
    ,CategoryName VARCHAR2(20) -- ī�װ���
);

ALTER TABLE Category_
    ADD CONSTRAINT Category_Id_PK PRIMARY KEY(CategoryId);

INSERT INTO Category_
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId),2, 4), 0) + 1, 3, 0)) AS CategoryId FROM Category_)
,'������ġ');
INSERT INTO Category_
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId),2, 4), 0) + 1, 3, 0)) AS CategoryId FROM Category_)
,'���̵�');
INSERT INTO Category_
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId),2, 4), 0) + 1, 3, 0)) AS CategoryId FROM Category_)
,'��');
INSERT INTO Category_
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId),2, 4), 0) + 1, 3, 0)) AS CategoryId FROM Category_)
,'��ä');
INSERT INTO Category_
VALUES((SELECT CONCAT('C', LPAD(NVL(SUBSTR(MAX(CategoryId),2, 4), 0) + 1, 3, 0)) AS CategoryId FROM Category_)
,'�ҽ�');
COMMIT;

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

INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C001', '���׸���', 5000);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C001', '������ũ', 4000);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C001', '��Ű', 5500);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C001', '������', 6000);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C002', '����', 1000);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C002', '���� + ��Ű', 1500);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C002', '��Ű', 1000);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C002', '����', 1000);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C002', '�����Ʈ', 1500);
INSERT INTO Item(ItemId, CategoryId, ItemName, ItemPrice)
VALUES((SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(ItemId),2, 4), 0) + 1, 3, 0)) AS ItemId FROM Item)
,'C002', '��������', 3000);
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
 INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C003', '�÷�');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C003', 'ȭ��Ʈ');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C003', '��Ͽ�Ʈ');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C003', '�ĸ���');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C004', '�Ǹ�');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C004', '����');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C004', '�ø���');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C004', '�Ҷ��Ǵ�');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C004', '�����');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C005', '��ĥ��');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C005', '��ġ');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C005', '����Ʈ��Ͼ� ');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C005', '����Ʈĥ��');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C005', '�ٺ�ť');
INSERT INTO Material(MaterialId, CategoryId, MaterialName)
VALUES((SELECT CONCAT('M', LPAD(NVL(SUBSTR(MAX(MaterialId),2, 4), 0) + 1, 3, 0)) AS MaterialId FROM Material)
,'C005', '�ӽ�Ÿ��');
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
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId),2, 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
,'2019-03-01', 10000);
INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId),2, 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
,'2019-03-01', 10000);
INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId),2, 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
,'2019-04-01', 10000);
INSERT INTO LastPayment(lastPaymentId, lastPaymentDate, lastPaymentMoney)
VALUES((SELECT CONCAT('L', LPAD(NVL(SUBSTR(MAX(lastPaymentId),2, 4), 0) + 1, 3, 0)) AS lastPaymentId FROM LastPayment)
,'2019-03-02', 10000);
COMMIT;      
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
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L001', 'I001', 5000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L001', 'I005', 5000, 5);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L002', 'I001', 5000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L002', 'I008', 5000, 5);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L003', 'I001', 10000, 2);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L004', 'I002', 4000, 1);
INSERT INTO detailPayment(detailPaymentId, lastPaymentId, itemId, price, Cnt)
VALUES((SELECT CONCAT('D', LPAD(NVL(SUBSTR(MAX(detailPaymentId),2, 4), 0) + 1, 3, 0)) AS detailPaymentId FROM detailPayment)
,'L004', 'I010', 6000, 2);
COMMIT;   
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
VALUES('L002', 'A001', 9000);
INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L002', 'A002', 1000);
INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L003', 'A001', 10000);
INSERT INTO Payment(lastPaymentId, PaymentListId, PaymentMoney)
VALUES('L004', 'A001', 10000);
COMMIT;   
-- �������� ���̺�
CREATE TABLE paymentList(
    paymentListId VARCHAR2(4), --��������ID, PK
    paymentListName VARCHAR2(20) --����������
);
ALTER TABLE paymentList
    ADD CONSTRAINT paymentListId_pk PRIMARY KEY(paymentListId);
    
INSERT INTO paymentList(paymentListId, paymentListName)
VALUES((SELECT CONCAT('A', LPAD(NVL(SUBSTR(MAX(paymentListId),2, 4), 0) + 1, 3, 0)) AS paymentListId FROM paymentList)
,'ī��');
INSERT INTO paymentList(paymentListId, paymentListName)
VALUES((SELECT CONCAT('A', LPAD(NVL(SUBSTR(MAX(paymentListId),2, 4), 0) + 1, 3, 0)) AS paymentListId FROM paymentList)
,'����Ʈ');
COMMIT; 

-- ����Ʈ�����丮 ���̺�
CREATE TABLE PointHistory(
    PointHistoryId VARCHAR2(4) --PK HistoryId
    ,LastPaymentId VARCHAR2(4) --FK ���系��ID
    ,PaymentListId VARCHAR2(4) --FK ��������ID
    ,UserPhone VARCHAR2(20) --FK ȸ�� ��ȭ��ȣ
    ,Point_ NUMBER -- ����Ʈ �ݾ�
    ,Gubun VARCHAR2(10) -- ����
);
ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_HistoryId_PK PRIMARY KEY(PointHistoryId);
ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_UserPhone_FK FOREIGN KEY(UserPhone) REFERENCES User_(UserPhone);
ALTER TABLE PointHistory    
    ADD CONSTRAINT PointHistory_LastPaymentId_FK FOREIGN KEY(LastPaymentId, PaymentListId) 
    REFERENCES Payment(LastPaymentId, PaymentListId);
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserPhone, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId),2, 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L001', 'A001', '010-1111-1111', 1000, '����');
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserPhone, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId),2, 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L002', 'A002', '010-1111-1111', 1000, '���');
INSERT INTO PointHistory(PointHistoryId, LastPaymentId, PaymentListId, UserPhone, Point_, Gubun)
VALUES((SELECT CONCAT('H', LPAD(NVL(SUBSTR(MAX(PointHistoryId),2, 4), 0) + 1, 3, 0)) AS PointHistoryId FROM PointHistory)
,'L002', 'A001', '010-1111-1111', 900, '����');
COMMIT; 

--------------------------------------------------------------------------
-- ����� ���̺�
CREATE TABLE user_(
    UserPhone VARCHAR2(20) -- PKȸ�� ����ó
    ,UserPoint NUMBER -- ȸ�� ����Ʈ
);

ALTER TABLE User_
    ADD CONSTRAINT User_UserPhone_PK PRIMARY KEY(UserPhone);
INSERT INTO user_(UserPhone, UserPoint)
VALUES('010-1111-1111', 1000);
commit;

-- ������ ���̺�
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.������ID
    ,adminPw VARCHAR2(20) --������PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);
INSERT INTO Admin_(adminId, adminPw)
VALUES('admin', '1234'); 
commit;
------------------------------------------------------------------------------------------------

/*
��ȣ �ڵ����� ���
SELECT CONCAT('������', LPAD(NVL(SUBSTR(MAX(���̺�id),2, 4), 0) + 1, 3, 0)) AS ���̺�id FROM ���̺�;
*/
--����)
SELECT CONCAT('I', LPAD(NVL(SUBSTR(MAX(itemid),2, 4), 0) + 1, 3, 0)) AS itemid FROM item;

------------------------------------------------------------------------------------------------

--1.������ġ �ֹ�
--1.������ġ �ֹ� / ������ġ ���� �ֹ�
SELECT itemid, categoryid, itemname, itemprice
    FROM Item
    WHERE categoryid = 'C001'
    ORDER BY itemid;
--1.������ġ �ֹ� / �� �ֹ�
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE categoryid = 'C003'
    ORDER BY MaterialId;
--1.������ġ �ֹ� / ��ä �ֹ�
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE categoryid = 'C004'
    ORDER BY MaterialId;
--1.������ġ �ֹ� / �ҽ� �ֹ�
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE categoryid = 'C005'
    ORDER BY MaterialId;

--2.���̵��ֹ�
SELECT itemId, categoryId, Itemname, itemPrice
FROM item
WHERE categoryId = 'C002'
ORDER BY itemId;

--3.��ٱ���(����)
SELECT userPoint
FROM user_
WHERE userPhone = '010-1111-1111';
--3.��ٱ���(����) / �Ϲݰ���
--3.��ٱ���(����) / ����Ʈ ����
--3.��ٱ���(����) / ����Ʈ ����

--4. ����Ʈ���� / ȸ������Ʈ ��ȸ
--4. ����Ʈ���� / ȸ������Ʈ ��ȸ / ����Ʈ ���� ��ȸ
SELECT l.LastPaymentDate, p.userphone, p.Point_, p.Gubun
    FROM PointHistory p, Payment p1, User_ u, LastPayment l
    WHERE p.lastpaymentid = p1.lastpaymentid
    AND p.paymentlistid = p1.paymentlistid
    AND p.userphone = u.userphone
    AND l.lastpaymentid = p1.lastpaymentid
    AND p.userphone = '010-1111-1111';

--4. ����Ʈ���� / ȸ������Ʈ ��ȸ / ����Ʈ �ܾ� ��ȸ
SELECT userPoint
FROM user_
WHERE userPhone = '010-1111-1111';

--99.�����ڸ޴�
--99.�����ڸ޴� / 1.�޴����� 
SELECT CategoryId, CategoryName 
    FROM Category_;
SELECT ItemId, CategoryId, ItemName, ItemPrice
    FROM Item
    WHERE CategoryId = 'C001';
SELECT MaterialId, CategoryId, MaterialName
    FROM Material
    WHERE CategoryId = 'C004';
--99.�����ڸ޴� / 1.�޴����� / 1.�� �޴� �߰�
--99.�����ڸ޴� / 1.�޴����� / 2.���� �޴� ����
--99.�����ڸ޴� / 1.�޴����� / 3. ���� �޴� ���� ����

--99.�����ڸ޴� / 2. ���ϰ��
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
--99.�����ڸ޴� / 2. ���ϰ�� / 1.���ϰ��
--99.�����ڸ޴� / 2. ���ϰ�� / 2.���ϰ��

--99.�����ڸ޴� / 3. ������� 
SELECT RANK() OVER(ORDER BY TO_CHAR(LastPaymentDate,'YYYY-MM')) num_
        ,TO_CHAR(LastPaymentDate,'YYYY-MM') month_, SUM(lastpaymentmoney) price_
    FROM LastPayment
    GROUP BY TO_CHAR(LastPaymentDate,'YYYY-MM');
--99.�����ڸ޴� / 3. �������  / �� ���� ��
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
