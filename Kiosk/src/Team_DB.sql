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
    ,ItemList VARCHAR2(20) -- ǰ������
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
    ,MaterialList VARCHAR2(20) -- �������
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
    ,lastPaymentDat DATE --������¥
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
    ,UserId VARCHAR2(4) --FK ȸ��ID
    ,Point NUMBER -- ����Ʈ �ݾ�
    ,Gubun VARCHAR2(5) -- ����
);
ALTER TABLE PointHistory
    ADD CONSTRAINT PointHistory_HistoryId_PK PRIMARY KEY(PointHistoryId);
    
--------------------------------------------------------------------------
-- ����� ���̺�
CREATE TABLE user_(
    UserId VARCHAR2(4) --PK ȸ��ID
    ,UserPhone VARCHAR2(20) --ȸ�� ����ó
    ,UserPoint VARCHAR(20) -- ȸ�� ����Ʈ
);
ALTER TABLE User_
    ADD CONSTRAINT User_UserId_PK PRIMARY KEY(UserId);
    
-- ������ ���̺�
CREATE TABLE Admin_(
    adminId VARCHAR2(20) --PK.������ID
    ,adminPw VARCHAR2(20) --������PW
);
ALTER TABLE Admin_
   ADD CONSTRAINT Admin_pk PRIMARY KEY(adminId);




