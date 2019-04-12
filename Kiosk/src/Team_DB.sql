-- ī�װ� ���̺�
CREATE TABLE Category_(
    CategoryId VARCHAR2(4) -- ī�װ�ID PK
    ,CategoryName VARCHAR2(20) -- ī�װ���
);

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
              
-----------------------------------------------------------------------
-- ������������ ���̺�
CREATE TABLE LastPayment (
    lastPaymentId VARCHAR2(4) --PK.��������ID
    ,lastPaymentDate DATE --������¥
    ,lastPaymentMoney NUMBER --�Ѱ����ݾ�
);

ALTER TABLE LastPayment
   ADD CONSTRAINT LastPayment_pk PRIMARY KEY(lastPaymentId);  

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

-- �������� ���̺�
CREATE TABLE paymentList(
    paymentListId VARCHAR2(4), --��������ID, PK
    paymentListName VARCHAR2(20) --����������
);

ALTER TABLE paymentList
    ADD CONSTRAINT paymentListId_pk PRIMARY KEY(paymentListId);


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


--------------------------------------------------------------------------
-- ����� ���̺�
CREATE TABLE user_(
    UserPhone VARCHAR2(20) -- PKȸ�� ����ó
    ,UserPoint VARCHAR(20) -- ȸ�� ����Ʈ
);

ALTER TABLE User_
    ADD CONSTRAINT User_UserPhone_PK PRIMARY KEY(UserPhone);
ALTER TABLE User_
    ADD CONSTRAINT User_UserPhone_PK PRIMARY KEY(UserPhone);

-- ������ ���̺�
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.������ID
    ,adminPw VARCHAR2(20) --������PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);
 
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
