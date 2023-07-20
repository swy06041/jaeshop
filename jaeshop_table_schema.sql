drop table t_shopping_member;
drop table t_shopping_goods;
drop table t_goods_detail_image;
drop table t_shopping_order;
drop table t_shopping_cart;

--------------------------------------------------------
--  DDL for Table T_GOODS_DETAIL_IMAGE
--------------------------------------------------------

  CREATE TABLE "T_GOODS_DETAIL_IMAGE" 
   (	"IMAGE_ID" NUMBER(20,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"FILENAME" VARCHAR2(50 BYTE), 
	"REG_ID" VARCHAR2(20 BYTE), 
	"FILETYPE" VARCHAR2(40 BYTE), 
	"CREDATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_GOODS
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_GOODS" 
   (	"GOODS_ID" NUMBER(20,0) primary key, 
	"GOODS_SORT" VARCHAR2(50 BYTE), 
	"GOODS_TITLE" VARCHAR2(100 BYTE), 
	"GOODS_WRITER" VARCHAR2(50 BYTE), 
	"GOODS_PUBLISHER" VARCHAR2(50 BYTE), 
	"GOODS_PRICE" NUMBER(10,0), 
	"GOODS_SALES_PRICE" NUMBER(10,0), 
	"GOODS_POINT" NUMBER(10,0), 
	"GOODS_PUBLISHED_DATE" DATE, 
	"GOODS_TOTAL_PAGE" NUMBER(5,0), 
	"GOODS_ISBN" VARCHAR2(50 BYTE), 
	"GOODS_DELIVERY_PRICE" NUMBER(10,0), 
	"GOODS_DELIVERY_DATE" DATE, 
	"GOODS_STATUS" VARCHAR2(50 BYTE), 
	"GOODS_INTRO" VARCHAR2(2000 BYTE), 
	"GOODS_WRITER_INTRO" VARCHAR2(2000 BYTE), 
	"GOODS_PUBLISHER_COMMENT" VARCHAR2(2000 BYTE), 
	"GOODS_RECOMMENDATION" VARCHAR2(2000 BYTE), 
	"GOODS_CONTENTS_ORDER" CLOB, 
	"GOODS_CREDATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_MEMBER
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_MEMBER" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE) primary key, 
	"MEMBER_PW" VARCHAR2(30 BYTE), 
	"MEMBER_NAME" VARCHAR2(50 BYTE), 
	"MEMBER_GENDER" VARCHAR2(10 BYTE), 
	"TEL1" VARCHAR2(20 BYTE), 
	"TEL2" VARCHAR2(20 BYTE), 
	"TEL3" VARCHAR2(20 BYTE), 
	"HP1" VARCHAR2(20 BYTE), 
	"HP2" VARCHAR2(20 BYTE), 
	"HP3" VARCHAR2(20 BYTE), 
	"SMSSTS_YN" VARCHAR2(20 BYTE), 
	"EMAIL1" VARCHAR2(20 BYTE), 
	"EMAIL2" VARCHAR2(20 BYTE), 
	"EMAILSTS_YN" VARCHAR2(20 BYTE), 
	"ZIPCODE" VARCHAR2(20 BYTE), 
	"ROADADDRESS" VARCHAR2(500 BYTE), 
	"JIBUNADDRESS" VARCHAR2(500 BYTE), 
	"NAMUJIADDRESS" VARCHAR2(500 BYTE), 
	"MEMBER_BIRTH" VARCHAR2(20 BYTE), 
	"JOINDATE" DATE DEFAULT sysdate, 
	"DEL_YN" VARCHAR2(20 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_ORDER
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_ORDER" 
   (	"ORDER_SEQ_NUM" NUMBER(20,0) primary key, 
	"ORDER_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"GOODS_ID" NUMBER(20,0), 
	"ORDERER_NAME" VARCHAR2(50 BYTE), 
	"GOODS_TITLE" VARCHAR2(100 BYTE), 
	"ORDER_GOODS_QTY" NUMBER(5,0), 
	"GOODS_SALES_PRICE" NUMBER(5,0), 
	"GOODS_FILENAME" VARCHAR2(60 BYTE), 
	"RECEIVER_NAME" VARCHAR2(50 BYTE), 
	"RECEIVER_HP1" VARCHAR2(20 BYTE), 
	"RECEIVER_HP2" VARCHAR2(20 BYTE), 
	"RECEIVER_HP3" VARCHAR2(20 BYTE), 
	"RECEIVER_TEL1" VARCHAR2(20 BYTE), 
	"RECEIVER_TEL2" VARCHAR2(20 BYTE), 
	"RECEIVER_TEL3" VARCHAR2(20 BYTE), 
	"DELIVERY_ADDRESS" VARCHAR2(500 BYTE), 
	"DELIVERY_METHOD" VARCHAR2(40 BYTE), 
	"DELIVERY_MESSAGE" VARCHAR2(300 BYTE), 
	"GIFT_WRAPPING" VARCHAR2(20 BYTE), 
	"PAY_METHOD" VARCHAR2(200 BYTE), 
	"CARD_COM_NAME" VARCHAR2(50 BYTE), 
	"CARD_PAY_MONTH" VARCHAR2(20 BYTE), 
	"PAY_ORDERER_HP_NUM" VARCHAR2(20 BYTE), 
	"DELIVERY_STATE" VARCHAR2(20 BYTE) DEFAULT 'delivery_prepared', 
	"PAY_ORDER_TIME" DATE DEFAULT sysdate, 
	"ORDERER_HP" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_CART
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_CART" 
   (	"CART_ID" NUMBER(10,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"DEL_YN" VARCHAR2(20 BYTE) DEFAULT 'N', 
	"CREDATE" DATE DEFAULT sysdate, 
	"CART_GOODS_QTY" NUMBER(4,0) DEFAULT 1
   ) ;
REM INSERTING into T_GOODS_DETAIL_IMAGE
SET DEFINE OFF;
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,394,'������ ���󰡱� ȫ�� ��ī��.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (347,394,'������ ���󰡱� ȫ�� ��ī��_��.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (348,394,'detail2.jpg','admin','detail_image2',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (349,395,'image2.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (350,395,'����� ���̼����̹���1.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (351,397,'main_react.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (352,397,'react_detail1.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (353,398,'����ڹٽ�ũ��Ʈ_����.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (354,398,'����ڹٽ�ũ��Ʈ_��1.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (299,334,'���伥 ������ �����ϱ�_����.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (300,334,'���伥 ������ �����ϱ�_��1.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (301,335,'��Ʈ�м� ������ �����ϱ�_����.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (302,335,'��Ʈ�м� ������ �����ϱ�_��1.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (303,336,'§�ױ� �����_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (304,336,'§�ױ� �����_��1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (305,337,'�ɶ��_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (306,337,'�ɶ��_��1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (307,338,'��ǻ�� Ȱ��ɷ� 2�� �Ǳ�_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (308,338,'��ǻ�� Ȱ��ɷ� 2�� �Ǳ�_��1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (309,339,'�ó��� �������μ��� �Ǳ�_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (310,339,'�ó��� �������μ��� �Ǳ�_��1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (311,340,'�����ǹ�_����.pg.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (312,340,'�����ǹ�_��1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (313,341,'����ڹٽ�ũ��Ʈ_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (314,341,'����� ���̼����̹���1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (315,342,'�ε��� ��Ļ���_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (316,342,'�ε��� ��Ļ���_��1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (317,343,'������ ����_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (339,343,'good1_detail_image3.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (319,344,'image1.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (320,344,'react_detail1.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (321,345,'main_react.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (322,345,'detail3.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (323,346,'���� �Ϻ���_����.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (324,346,'���� �Ϻ���_��.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (325,347,'���� ���� ������ �ڹ�_����.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (326,347,'���� ���� ������ �ڹ�_��1.jpg','admin','detail_image1',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (327,348,'Java EE ������ ����_����.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (328,348,'Java EE ������ ����_��1.jpg','admin','detail_image1',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (330,349,'�ڹ� �����丵_����.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (331,349,'�ڹ� �����丵_��1.jpg','admin','detail_image1',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (334,350,'���������ڹ�_����.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (341,350,'���������ڹ�_��1.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (337,343,'������ ����_��1.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (338,343,'good1_detail_image2.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (342,354,'����� ������_����.jpg','admin','main_image',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (343,354,'����� ������_��.jpg','admin','detail_image1',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (345,356,'����_����.jpg','admin','main_image',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,356,'����_��1.jpg','admin','detail_image1',to_date('18/10/23','RR/MM/DD'));
REM INSERTING into T_SHOPPING_GOODS
SET DEFINE OFF;
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (394,'��ǻ�Ϳ� ���ͳ�','������ ���󰡱� ȫ�� ��ī��','�����, ��³�','�����Ͻ�',30000,27000,1000,to_date('15/10/16','RR/MM/DD'),1000,'121212',2000,to_date('18/10/18','RR/MM/DD'),'bestseller','�� å�� �а� ���� ���α׷��Ӵ� ���ο� ��ü�� ã�Ƽ� ����� �� ���̰�, �װ��� ���α׷���ȭ �ϴ� ���� ������ ��ü ���� ���α׷����̶�� ����� ���ݰ� �� ���̴�.

��ü ���� ���α׷����̶� ����� ����ü(subject)���� �ϰ�, ��ü�� �ٶ� ���(���, �繰, ��ü)�� ����ü(object)����� �Ѵ�. ����� �ϻ������� ����, ������, �����ϴ� �������� ���α׷����� �ϴ� ����̴�.

�ڹٸ� ó�� ���ϴ� ����� �ټ� ������ ������ �������� �ݺ��ؼ� �н��� �ϴ� ���� ����� ���α׷��ֿ� �Թ��� �� �ִٴ� ����� ���ݰ� �� ���̴�. �� ���� ������ ���������� �ξ� �����ϱ⿡ �����ϴ�. ���� ������ ī��(http://cafe.naver.com/standardjava)������ �� å�� ������ ��� ������ ���¸� ����� �����Ѵ�.','���ڰ� ���� �Ⱓ �ǹ����� ������ �̷� �� ��ҿ� ������ �ִ� �о߿� �п� ���� �� �Թ��ڵ��� ù ���α׷����� ����� ���� ���� �κа� ������ �����ϸ鼭 ������� ���� ������ ���������� �������� �ڹٸ� ó�� ���� �Թ��ڰ� ���� �ڽ��� ���̵� �����Ͽ� ������ �� �ְ� �����Ͽ� �����ߴ�.

- ���ڰ��а� ����
- ��ó ������� �پ��� ����Ʈ���� ���� ����
- ������ �ý��� ���� �۾��� ���õ� ����Ʈ���� ���� ����
- IT���α׷��� �п����� ����

������ī�� : http://cafe.naver.com/standardjava','�� å�� �� �ܰ� �н� ���

ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.

�� ��° �ܰ�� �ڹ��� ��ü ���� ���信 ���� ����.
: C���� ��ǻ���� ���� ������ �䳻 �� ������ ����̴�. �̷��� ������ �� �ϴµ� �־� ���� ���� �������� ��Ÿ����. ��ǥ�����δ� �ҽ� �ڵ��� �����̴�. ������ ���� ���α׷��� �ʱ⿡ ���� �Ը� Ŀ���� ���� �Ⱓ�� ���� �Ҹ�ȴ�. �ڹٴ� ���� ����� ���뼺, ������ ���̼�, ������ ������ ���� ������ ���� ã�� �ִ�. �� �ܰ��� �ٽ��� ���뼺 �� ���α׷��� ����� ���õ� ��ü ���� ���信 ���� �н��Ѵ�.

�� ��° �ܰ�� API�� ����� �� �庰�� �н��Ѵ�.
: �ڹٴ� �� 20���� �Ѿ��� ������ ������ �ڹٷ� ���α׷����� �ϸ鼭 �ٸ� ���α׷����� ���� ����ϴ� ����� �̸� �ڹٿ��� Ŭ������ ���� �����Ѵ�. �̸� API(Application Program Interface)��� �ϸ�, �� �ܰ��� ������ ��� �ٸ� ������ �����Ѵ�. �׷��� �ڹٴ� �տ��� ���� �ٿ� ���� ��ü ���� ����̹Ƿ� �� ��� API ����� ��ü ���� ������ �����Ͽ� �����ǰ� �ִ�. ���� �ڹ��� API�� �� ����Ϸ��� ���� ��ü ���� ������ �� �����ؾ� �Ѵ�.','�� å�� �� �ܰ� �н� ���

ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.

�� ��° �ܰ�� �ڹ��� ��ü ���� ���信 ���� ����.
: C���� ��ǻ���� ���� ������ �䳻 �� ������ ����̴�. �̷��� ������ �� �ϴµ� �־� ���� ���� �������� ��Ÿ����. ��ǥ�����δ� �ҽ� �ڵ��� �����̴�. ������ ���� ���α׷��� �ʱ⿡ ���� �Ը� Ŀ���� ���� �Ⱓ�� ���� �Ҹ�ȴ�. �ڹٴ� ���� ����� ���뼺, ������ ���̼�, ������ ������ ���� ������ ���� ã�� �ִ�. �� �ܰ��� �ٽ��� ���뼺 �� ���α׷��� ����� ���õ� ��ü ���� ���信 ���� �н��Ѵ�.

�� ��° �ܰ�� API�� ����� �� �庰�� �н��Ѵ�.
: �ڹٴ� �� 20���� �Ѿ��� ������ ������ �ڹٷ� ���α׷����� �ϸ鼭 �ٸ� ���α׷����� ���� ����ϴ� ����� �̸� �ڹٿ��� Ŭ������ ���� �����Ѵ�. �̸� API(Application Program Interface)��� �ϸ�, �� �ܰ��� ������ ��� �ٸ� ������ �����Ѵ�. �׷��� �ڹٴ� �տ��� ���� �ٿ� ���� ��ü ���� ����̹Ƿ� �� ��� API ����� ��ü ���� ������ �����Ͽ� �����ǰ� �ִ�. ���� �ڹ��� API�� �� ����Ϸ��� ���� ��ü ���� ������ �� �����ؾ� �Ѵ�.',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (395,'��ǻ�Ϳ� ���ͳ�','����� ���̽�','�̽���','���',12000,10800,1000,to_date('16/05/09','RR/MM/DD'),200,'9791186978894',2000,to_date('18/10/18','RR/MM/DD'),'bestseller','���α׷����� �� ���� �غ� ���� ��� ������. ���̽��� �������� ���� ��� ����. ������� ���̽㡷�� ����� ����� ������ �̷� ������ �ִ��� ���̰�, �ʺ��ڰ� ���α׷����� ���� ��� �� �ֵ��� ª�� ������ ������ ������ �����ߴ�. ó������ ��� ���� �� �������� ���ص� ������. ���α׷��� ���� �Է��ϰ�, ���� ����� Ȯ���ϸ�, å���� �˷��ִ� ��� ������ ������ ����. ����� ���̽� ���α׷����� ���� �׸��� �׸���, ����� �ϰ�, ������ ������ �����, ���� ������ Ǫ�� �ڽ��� �߰��ϰ� �� ���̴�. ������� ���̽㡷���� ������ ������ ��̰� ���α׷����� ������ ����!

������ 20���̸� ���̽� ���α׷��� ���� �� �ִ�!

1~13��: ���̽� ��� ���� ����

�ʺ��ڵ� ���� ���� ����� ���̽��� ���� ������ ������ ����. �Է� �� ��� Ȯ�� �� ���� �ذ� �� �ؼ� �� ����, ��5�ܰ� Ʈ���̴ס����� ª�� ���α׷��� ���� �Է��ϰ� ���� ���鼭 �ڿ������� ���α׷��� �ۼ��ϴ� ����� ������.

14~18��: ������ ���� �����

�տ��� �н��� ���̽� ����� �̿��Ͽ� 5���� ���� ������Ʈ�� �ǽ��Ѵ�. ��� ������ ����, Ÿ�� ����, �ź��� ���� ����, ��Ʋ�� 1, 2�� ����� ������ ������ �÷����� ����.

19~20��: ���̽����� ���� ���� Ǯ�� ����

���б� ������ ������ ���� ������ ���̽� ���α׷����� ���� Ǯ�� ����. ���а� ���α׷����� ���� ���踦 ��� �� ������ ���̽��� ��� Ȱ��Ǵ��� �� �� �ִ�.

 ���� �� �ڸ�Ʈ','������б����� ��ǻ�Ͱ����� �����ϰ� ���� �����ڷ� ���ϸ� �����ý��丮 ���� ��Ʈ ������ ��������ϴ�. 15�Ⱓ ���� ���� ���踦 ���� University of Washington���� �濵�� ���� ������ �޾ҽ��ϴ�. ���� �κ� ����/���� ��ü ��Ÿ�κ�ƽ������ �ֽ� ����Ʈ���� ����� ��� ���忡 �����ϱ� ���� ����ϰ� �ֽ��ϴ�.','���α׷����� �� ���� �غ� ���� ��� ������. ���̽��� �������� ���� ��� ����. ������� ���̽㡷�� ����� ����� ������ �̷� ������ �ִ��� ���̰�, �ʺ��ڰ� ���α׷����� ���� ��� �� �ֵ��� ª�� ������ ������ ������ �����ߴ�. ó������ ��� ���� �� �������� ���ص� ������. ���α׷��� ���� �Է��ϰ�, ���� ����� Ȯ���ϸ�, å���� �˷��ִ� ��� ������ ������ ����. ����� ���̽� ���α׷����� ���� �׸��� �׸���, ����� �ϰ�, ������ ������ �����, ���� ������ Ǫ�� �ڽ��� �߰��ϰ� �� ���̴�. ������� ���̽㡷���� ������ ������ ��̰� ���α׷����� ������ ����!

������ 20���̸� ���̽� ���α׷��� ���� �� �ִ�!

1~13��: ���̽� ��� ���� ����

�ʺ��ڵ� ���� ���� ����� ���̽��� ���� ������ ������ ����. �Է� �� ��� Ȯ�� �� ���� �ذ� �� �ؼ� �� ����, ��5�ܰ� Ʈ���̴ס����� ª�� ���α׷��� ���� �Է��ϰ� ���� ���鼭 �ڿ������� ���α׷��� �ۼ��ϴ� ����� ������.

14~18��: ������ ���� �����

�տ��� �н��� ���̽� ����� �̿��Ͽ� 5���� ���� ������Ʈ�� �ǽ��Ѵ�. ��� ������ ����, Ÿ�� ����, �ź��� ���� ����, ��Ʋ�� 1, 2�� ����� ������ ������ �÷����� ����.

19~20��: ���̽����� ���� ���� Ǯ�� ����

���б� ������ ������ ���� ������ ���̽� ���α׷����� ���� Ǯ�� ����. ���а� ���α׷����� ���� ���踦 ��� �� ������ ���̽��� ��� Ȱ��Ǵ��� �� �� �ִ�.

 ���� �� �ڸ�Ʈ','���α׷����� �� ���� �غ� ���� ��� ������. ���̽��� �������� ���� ��� ����. ������� ���̽㡷�� ����� ����� ������ �̷� ������ �ִ��� ���̰�, �ʺ��ڰ� ���α׷����� ���� ��� �� �ֵ��� ª�� ������ ������ ������ �����ߴ�. ó������ ��� ���� �� �������� ���ص� ������. ���α׷��� ���� �Է��ϰ�, ���� ����� Ȯ���ϸ�, å���� �˷��ִ� ��� ������ ������ ����. ����� ���̽� ���α׷����� ���� �׸��� �׸���, ����� �ϰ�, ������ ������ �����, ���� ������ Ǫ�� �ڽ��� �߰��ϰ� �� ���̴�. ������� ���̽㡷���� ������ ������ ��̰� ���α׷����� ������ ����!

������ 20���̸� ���̽� ���α׷��� ���� �� �ִ�!

1~13��: ���̽� ��� ���� ����

�ʺ��ڵ� ���� ���� ����� ���̽��� ���� ������ ������ ����. �Է� �� ��� Ȯ�� �� ���� �ذ� �� �ؼ� �� ����, ��5�ܰ� Ʈ���̴ס����� ª�� ���α׷��� ���� �Է��ϰ� ���� ���鼭 �ڿ������� ���α׷��� �ۼ��ϴ� ����� ������.

14~18��: ������ ���� �����

�տ��� �н��� ���̽� ����� �̿��Ͽ� 5���� ���� ������Ʈ�� �ǽ��Ѵ�. ��� ������ ����, Ÿ�� ����, �ź��� ���� ����, ��Ʋ�� 1, 2�� ����� ������ ������ �÷����� ����.

19~20��: ���̽����� ���� ���� Ǯ�� ����

���б� ������ ������ ���� ������ ���̽� ���α׷����� ���� Ǯ�� ����. ���а� ���α׷����� ���� ���踦 ��� �� ������ ���̽��� ��� Ȱ��Ǵ��� �� �� �ִ�.

 ���� �� �ڸ�Ʈ',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (397,'��ǻ�Ϳ� ���ͳ�','����Ʈ�� �ٷ�� ���','�����','���',32000,32000,1000,to_date('18/08/01','RR/MM/DD'),688,'9791160505238',2000,to_date('18/10/17','RR/MM/DD'),'bestseller','����Ʈ�� ���� �⺻ ������ ���� ���¿����� ���� ������ �� �ֵ��� �Ĳ��ϰ� �����Ǿ� �ֽ��ϴ�. ����, ���� �ǹ����� ��� ���Ǵ��� ���� �˷��ݴϴ�.


','�ִϸ��̼� ��Ʈ���� ���񽺸� �����ϴ� ������(laftel.net)���� ����Ʈ���� �����Ͼ�� ���ϰ� �ְ�, �н�Ʈķ�۽��� ����Ʈ�� �����ϴ� �� ���ø����̼� ���� ķ������ ���Ǹ� �ϰ� �ִ�. ����Ʈ�� �� ���̰�, velopert.com ���α׸� ��ϰ� ������, ��Ʃ�꿡�� ���� �� ���̺� �ڵ�(velopert�� �ڵ� �̾߱�)�� �ϰ� �ִ�','����Ʈ�� ���� �⺻ ������ ���� ���¿����� ���� ������ �� �ֵ��� �Ĳ��ϰ� �����Ǿ� �ֽ��ϴ�. ����, ���� �ǹ����� ��� ���Ǵ��� ���� �˷��ݴϴ�.
�����_������(�������б�) ������

����Ʈ�Ӹ� �ƴ϶� �پ��� ���̺귯���� �ʿ��� ���� ���� ����Ͽ� ���� ��� �� �־����ϴ�. 
������_IOS �� ����

�ǹ����� �ణ �����Ͽ� ����� �� �ִ� ���� ������ ����. �������� ���� �κ��� ���� ������ ������ �ſ� �ǹ����̴�.
������_��ŸƮ�� ����� ķ�۽� ������

�������� �����Ӹ� �ƴ϶� ����ϴ� ����� �� �� ������ ���Ե� ���ۿ� �������� �����ϴ� ���� �߿��ϴٰ� �����մϴ�. �� å�� �� ���� ���ҽ��ϴ�. 
������_�������б� ���п���','����Ʈ�� ���� �⺻ ������ ���� ���¿����� ���� ������ �� �ֵ��� �Ĳ��ϰ� �����Ǿ� �ֽ��ϴ�. ����, ���� �ǹ����� ��� ���Ǵ��� ���� �˷��ݴϴ�.
�����_������(�������б�) ������

����Ʈ�Ӹ� �ƴ϶� �پ��� ���̺귯���� �ʿ��� ���� ���� ����Ͽ� ���� ��� �� �־����ϴ�. 
������_IOS �� ����

�ǹ����� �ణ �����Ͽ� ����� �� �ִ� ���� ������ ����. �������� ���� �κ��� ���� ������ ������ �ſ� �ǹ����̴�.
������_��ŸƮ�� ����� ķ�۽� ������

�������� �����Ӹ� �ƴ϶� ����ϴ� ����� �� �� ������ ���Ե� ���ۿ� �������� �����ϴ� ���� �߿��ϴٰ� �����մϴ�. �� å�� �� ���� ���ҽ��ϴ�. 
������_�������б� ���п���',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (398,'��ǻ�Ϳ� ���ͳ�','Try! helloworld �ڹٽ�ũ��Ʈ','����','���',22000,19800,1000,to_date('18/05/22','RR/MM/DD'),336,'9791160504736',2000,to_date('18/10/17','RR/MM/DD'),'bestseller','�ڹٽ�ũ��Ʈ�� ������ �����ϰ� ���α׷� ��ġ�� �����Ͽ� ù ���α׷��� ���� �αⰡ ����. ����, �� ���α׷��ֺ��� ���� ���α׷� ���߱��� Ȱ�� ������ �д�. �� å�� ���� �н� ����(������+�¶��� �ǽ�)�� �����ϴ� ���α׷��ӽ�(programmers.co.kr) ����Ʈ�� �α� ���� ���ڹٽ�ũ��Ʈ ���ʡ��� ���� ����Ʈ���� ���ʡ��� å���� ���� ���̴�. å�� ���������ε� �н��ϴ� �� ������ ������, ���� ������ ���Ǹ� �Բ� ���� �н� ȿ���� ���� ������ ���̴�. ����, ��� ������ �ٷ� �¶��� ����Ʈ���� �ǽ��� �� �ִ�. �Ϸ� �� ��, ���� 15���̸� ����� �ڹٽ�ũ��Ʈ ���α׷��ֿ� �ͼ����� �ڽ��� �߰��ϰ� �� ���̴�.','�����ڸ��ƿ��� ����Ʈ���� �����Ͼ�� ���� ���̴�. �� ���� ����Ʈ���� �����Ͼ �Ǳ⸦ ���������� �ϰ� ���� ������ �� �߿��ϴ�. �ܿ￡�� �ַ� ��Ű�� ����.','���� ���� �ϸ鼭 ����� ������ ��Ȯ�ϰ� ��� �� �ֽ��ϴ�. ���α׷��� �� ���������Դϴ�. �ǽ��� �ϸ鼭 ����� ������ ��Ȯ�ϰ� ��� �� �ְ� ��μ� �ڱ� ������ ���� �� �ֽ��ϴ�. ���α׷��ӽ� ����Ʈ���� �����ϴ� ���ǿ� �ǽ� ������ �ڹٽ�ũ��Ʈ�� �����ϰ� �ڱ� ������ ����� �� ū ������ �� ���Դϴ�. ��ȸ�� �ȴٸ� ���� ������ ���ϴ� ������Ʈ�� ���� ����鼭 �ذ��� ������ ���մϴ�. ���α׷��ӷ� ���� ������ ������ �� ���� ���Դϴ�.--- ���Ӹ����� �߿���','ȥ�ڼ� �����ϴ� 
�ڹٽ�ũ��Ʈ + �� ����Ʈ����

# �Ϸ� 15��! �ڹٽ�ũ��Ʈ ���ʺ��� �� ����Ʈ�������!
ª�� ���ǿ� �ǽ��� ���� �Ϸ� 15���̸� ������ �ڹٽ�ũ��Ʈ ���α׷����� ��� �� �ְ� �����Ͽ���. ���� ������ ���� �Ŀ��� HTML, CSS�� �Բ� �ڹٽ�ũ��Ʈ�� Ȱ���� �� �������� �پ��� ����� �����غ���.

# 5�� ������, 53�� ����
����ö �ȿ���, ��Ȱ �� ������ �ð��� ƴƴ��, ««�� �� �� �ִ� ������ ���� 53���� �����Ѵ�(������ QR �ڵ� ����). �ʺ��ڵ� �������� �н��� �� �ֵ��� ������ ���ǿ��� ��ó �ٷ��� ���� ������ å�� �����ϰ� ������ �ʿ��� ���� �߰��ߴ�.

# �ڵ� �ǽ� 22�� + ���� ����
��� ������ �ٷ� Ȯ���ϰ� ������ �� �ִ� �ǽ� ������ ������ �����ߴ�. ���α׷��ӽ� ����Ʈ(http://programmers.co.kr)���� ���� �ڵ带 �Է��ϰ� �����غ��鼭 ��� ������ �Ʒ��� �� �ִ�.',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (334,'��ǻ�Ϳ� ���ͳ�','���伥 ������ �����ϱ�','������, ������, �̻�ȣ, �ع̵��','���',34000,30000,1000,to_date('18/10/02','RR/MM/DD'),1111,'12122222',2000,to_date('18/10/17','RR/MM/DD'),'bestseller','�����ڸ��ƿ��� ����Ʈ���� �����Ͼ�� ���� ���̴�. �� ���� ����Ʈ���� �����Ͼ �Ǳ⸦ ���������� �ϰ� ���� ������ �� �߿��ϴ�. �ܿ￡�� �ַ� ��Ű�� ����.','�����ڸ��ƿ��� ����Ʈ���� �����Ͼ�� ���� ���̴�. �� ���� ����Ʈ���� �����Ͼ �Ǳ⸦ ���������� �ϰ� ���� ������ �� �߿��ϴ�. �ܿ￡�� �ַ� ��Ű�� ����.','�����ڸ��ƿ��� ����Ʈ���� �����Ͼ�� ���� ���̴�. �� ���� ����Ʈ���� �����Ͼ �Ǳ⸦ ���������� �ϰ� ���� ������ �� �߿��ϴ�. �ܿ￡�� �ַ� ��Ű�� ����.','�����ڸ��ƿ��� ����Ʈ���� �����Ͼ�� ���� ���̴�. �� ���� ����Ʈ���� �����Ͼ �Ǳ⸦ ���������� �ϰ� ���� ������ �� �߿��ϴ�. �ܿ￡�� �ַ� ��Ű�� ����.',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (335,'��ǻ�Ϳ� ���ͳ�','������ �����ϱ� ��Ʈ�м�','�����','�̷� ���ǻ�',1212,30000,121,to_date('18/10/02','RR/MM/DD'),12,'1212',2000,to_date('18/10/24','RR/MM/DD'),'bestseller','1212','1212','1212','1212',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (336,'��ǻ�Ϳ� ���ͳ�','§��ũ �����','§���� ī��','���',30000,30000,1212,to_date('18/10/02','RR/MM/DD'),1212,'1212',1212,to_date('18/10/18','RR/MM/DD'),'bestseller','1212','1212','121','1212',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (337,'��ǻ�Ϳ� ���ͳ�','�ɶ󽺷� ���� ������','�����ҿ� ��','�������ǻ�',30000,30000,1212,to_date('18/10/02','RR/MM/DD'),1212,'1212',1212,to_date('18/10/19','RR/MM/DD'),'bestseller','1212','1221','1212','1212',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (338,'��ǻ�Ϳ� ���ͳ�','��ǻ�� Ȱ��ɷ� 2�� �Ǳ�','�̺���','���',25000,25000,1212,to_date('18/08/08','RR/MM/DD'),1212,'1212',1212,to_date('18/10/26','RR/MM/DD'),'bestseller','1212','1212','1212','1212',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (339,'��ǻ�Ϳ� ���ͳ�','�ó��� ���� ���μ��� �Ǳ�','��� �˿���','���� ���ǻ�',25000,25000,1212,to_date('18/10/29','RR/MM/DD'),1212,'1212',1212,to_date('18/10/25','RR/MM/DD'),'bestseller','1212','1212','1212','121',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (340,'��ǻ�Ϳ� ���ͳ�','�������� ���� ���� �ǹ�','ȫ�浿','�������ǻ�',25000,25000,1212,to_date('18/10/17','RR/MM/DD'),1212,'1212',1212,to_date('18/10/25','RR/MM/DD'),'bestseller','1212','1212','1212','1212',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (341,'��ǻ�Ϳ� ���ͳ�','�ڹٽ�ũ��Ʈ ����','2222','���� ���ǻ�',25000,25000,2222,to_date('18/10/18','RR/MM/DD'),2222,'2222',2222,to_date('18/10/18','RR/MM/DD'),'bestseller','5656','56566','5656','5656',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (342,'��ǻ�Ϳ� ���ͳ�','�ε��� ��� ����','�鿵��','���',20000,20000,5555,to_date('18/10/04','RR/MM/DD'),555,'555',555,to_date('18/10/11','RR/MM/DD'),'bestseller','555','555','555','555',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (343,'��ǻ�Ϳ� ���ͳ�','������ ����','�̼���','���� ���ǻ�',30000,30000,777,to_date('18/10/04','RR/MM/DD'),990,'777',2000,to_date('18/11/22','RR/MM/DD'),'steadyseller','777','7777','777','777',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (344,'��ǻ�Ϳ� ���ͳ�','�ʺ��ڸ� ���� �ڹ� ���α׷���','�̺���','������',30000,27000,2000,to_date('18/10/02','RR/MM/DD'),996,'2323454566778',2000,to_date('18/10/18','RR/MM/DD'),'newbook','7777','77777','7777','7777',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (345,'��ǻ�Ϳ� ���ͳ�','����Ʈ�� �ٷ�� ���','�̼���','�α� ���ǻ�',30000,30000,888,to_date('18/10/12','RR/MM/DD'),888,'8888',888,to_date('18/10/18','RR/MM/DD'),'newbook','88','888888','888','888',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (346,'��ǻ�Ϳ� ���ͳ�','���� �Ϻ���','�̱浿','���� ���ǻ�',30000,30000,898,to_date('18/10/23','RR/MM/DD'),8989,'8989',8989,to_date('18/10/18','RR/MM/DD'),'on_sale','8989','8989','8989','8989',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (347,'��ǻ�Ϳ� ���ͳ�','���� ���� ������ �ڹ�9','ī�� ȣ��Ʈ��','���',30000,32400,2000,to_date('18/10/17','RR/MM/DD'),1111,'1212121',2000,to_date('18/10/22','RR/MM/DD'),'steadyseller','ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.',null,'ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.','ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.',to_date('18/10/20','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (348,'��ǻ�Ϳ� ���ͳ�','�ڹ� EE ������ ����','����Ʈ���׸�, �˷��� �õ�','���',34000,30000,1000,to_date('18/10/18','RR/MM/DD'),1212,'12122222',2000,to_date('18/10/24','RR/MM/DD'),'on_sale','ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.','ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.','ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.','ù ��° �ܰ�� ���α׷��� ���� �����̴�.
: ��ü ���� ���α׷����� ���ϱ� ���ؼ��� �켱 ���� ���α׷��� ����� ������ ���α׷����� Ư¡�� �� �˾ƾ� �Ѵ�. �׸��� �ڹ� ���� ���� ���� ����ϴ� �����̳� ����� �״�� ����ϱ� ������ ���� ���� ���α׷����� �⺻���� Ư¡�̳� ����� �н��� �ʿ䰡 �ִ�.',to_date('18/10/20','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (349,'��ǻ�Ϳ� ���ͳ�','�ڹٷ� ���� �����丵','��Ű���ν�','���',34000,30000,1000,to_date('18/10/02','RR/MM/DD'),1111,'12122222',2000,to_date('18/10/25','RR/MM/DD'),'on_sale','���ڰ� ���� �Ⱓ �ǹ����� ������ �̷� �� ��ҿ� ������ �ִ� �о߿� �п� ���� �� �Թ��ڵ��� ù ���α׷����� ����� ���� ���� �κа� ������ �����ϸ鼭 ������� ���� ������ ���������� �������� �ڹٸ� ó�� ���� �Թ��ڰ� ���� �ڽ��� ���̵� �����Ͽ� ������ �� �ְ� �����Ͽ� �����ߴ�.','���ڰ� ���� �Ⱓ �ǹ����� ������ �̷� �� ��ҿ� ������ �ִ� �о߿� �п� ���� �� �Թ��ڵ��� ù ���α׷����� ����� ���� ���� �κа� ������ �����ϸ鼭 ������� ���� ������ ���������� �������� �ڹٸ� ó�� ���� �Թ��ڰ� ���� �ڽ��� ���̵� �����Ͽ� ������ �� �ְ� �����Ͽ� �����ߴ�.','���ڰ� ���� �Ⱓ �ǹ����� ������ �̷� �� ��ҿ� ������ �ִ� �о߿� �п� ���� �� �Թ��ڵ��� ù ���α׷����� ����� ���� ���� �κа� ������ �����ϸ鼭 ������� ���� ������ ���������� �������� �ڹٸ� ó�� ���� �Թ��ڰ� ���� �ڽ��� ���̵� �����Ͽ� ������ �� �ְ� �����Ͽ� �����ߴ�.','���ڰ� ���� �Ⱓ �ǹ����� ������ �̷� �� ��ҿ� ������ �ִ� �о߿� �п� ���� �� �Թ��ڵ��� ù ���α׷����� ����� ���� ���� �κа� ������ �����ϸ鼭 ������� ���� ������ ���������� �������� �ڹٸ� ó�� ���� �Թ��ڰ� ���� �ڽ��� ���̵� �����Ͽ� ������ �� �ְ� �����Ͽ� �����ߴ�.',to_date('18/10/20','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (350,'��ǻ�Ϳ� ���ͳ�','���� ������ ������ �ڵ��� ���-�ڹ���','�ֽ�Ʈ �߼�','�ѱ� ���ǻ�',35000,32000,2000,to_date('18/10/20','RR/MM/DD'),1000,'2323222323',2000,to_date('18/10/22','RR/MM/DD'),'steadyseller','�� å�� �а� ���� ���α׷��Ӵ� ���ο� ��ü�� ã�Ƽ� ����� �� ���̰�, �װ��� ���α׷���ȭ �ϴ� ���� ������ ��ü ���� ���α׷����̶�� ����� ���ݰ� �� ���̴�.','���ڰ� ���� �Ⱓ �ǹ����� ������ �̷� �� ��ҿ� ������ �ִ� �о߿� �п� ���� �� �Թ��ڵ��� ù ���α׷����� ����� ���� ���� �κа� ������ �����ϸ鼭 ������� ���� ������ ���������� �������� �ڹٸ� ó�� ���� �Թ��ڰ� ���� �ڽ��� ���̵� �����Ͽ� ������ �� �ְ� �����Ͽ� �����ߴ�.

- ���ڰ��а� ����
- ��ó ������� �پ��� ����Ʈ���� ���� ����
- ������ �ý��� ���� �۾��� ���õ� ����Ʈ���� ���� ����
- IT���α׷��� �п����� ����','�� å�� �а� ���� ���α׷��Ӵ� ���ο� ��ü�� ã�Ƽ� ����� �� ���̰�, �װ��� ���α׷���ȭ �ϴ� ���� ������ ��ü ���� ���α׷����̶�� ����� ���ݰ� �� ���̴�.','�� å�� �а� ���� ���α׷��Ӵ� ���ο� ��ü�� ã�Ƽ� ����� �� ���̰�, �װ��� ���α׷���ȭ �ϴ� ���� ������ ��ü ���� ���α׷����̶�� ����� ���ݰ� �� ���̴�.',to_date('18/10/20','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (354,'��ǻ�Ϳ� ���ͳ�','����� ������','����ȣ','���',24000,21600,1000,to_date('18/10/02','RR/MM/DD'),300,'2112121',3000,to_date('18/10/04','RR/MM/DD'),'bestseller','�������� ���� �𸣴� ����� ���� ���� ���� �� �ְ� ���� �����Ѵ�. ����, �������� ������ �� �����ִ� ������ �����Ͽ� �������� �� ���� �ڵ�� ������ �������� �����غ� �� �ִ�. �پ��ϰ� �������� ������ ���� ����ְ� �н��� �� ������, ��� ������ ���� �ӽ��� ��ġ�� �ʿ� ���� ���� 10���� �ս��� ������ �� �־� �����ϴ�. ������ ������ �ִ��� ���̰� ���� ����� ��ȭ �н����� �߰��� �н��� �� �ְ� �ܰ躰�� �����Ͽ���. ���̷� ���� �ǽ���, ���ǽ� ���� �̷С��� �ƴ� �̷а� �ǽ� �� ������ ������ �������ν�, ��� ������ �ùٷ� �����ϰ� �������� ����� ����� �� �ֵ��� �ȳ��Ѵ�. �� å�� �а� ���� ������ ��ʡ��� ������ ������ ���� ������ �� ���� ���̴�.','�������� ���� �𸣴� ����� ���� ���� ���� �� �ְ� ���� �����Ѵ�. ����, �������� ������ �� �����ִ� ������ �����Ͽ� �������� �� ���� �ڵ�� ������ �������� �����غ� �� �ִ�. �پ��ϰ� �������� ������ ���� ����ְ� �н��� �� ������, ��� ������ ���� �ӽ��� ��ġ�� �ʿ� ���� ���� 10���� �ս��� ������ �� �־� �����ϴ�. ������ ������ �ִ��� ���̰� ���� ����� ��ȭ �н����� �߰��� �н��� �� �ְ� �ܰ躰�� �����Ͽ���. ���̷� ���� �ǽ���, ���ǽ� ���� �̷С��� �ƴ� �̷а� �ǽ� �� ������ ������ �������ν�, ��� ������ �ùٷ� �����ϰ� �������� ����� ����� �� �ֵ��� �ȳ��Ѵ�. �� å�� �а� ���� ������ ��ʡ��� ������ ������ ���� ������ �� ���� ���̴�.','�������� ���� �𸣴� ����� ���� ���� ���� �� �ְ� ���� �����Ѵ�. ����, �������� ������ �� �����ִ� ������ �����Ͽ� �������� �� ���� �ڵ�� ������ �������� �����غ� �� �ִ�. �پ��ϰ� �������� ������ ���� ����ְ� �н��� �� ������, ��� ������ ���� �ӽ��� ��ġ�� �ʿ� ���� ���� 10���� �ս��� ������ �� �־� �����ϴ�. ������ ������ �ִ��� ���̰� ���� ����� ��ȭ �н����� �߰��� �н��� �� �ְ� �ܰ躰�� �����Ͽ���. ���̷� ���� �ǽ���, ���ǽ� ���� �̷С��� �ƴ� �̷а� �ǽ� �� ������ ������ �������ν�, ��� ������ �ùٷ� �����ϰ� �������� ����� ����� �� �ֵ��� �ȳ��Ѵ�. �� å�� �а� ���� ������ ��ʡ��� ������ ������ ���� ������ �� ���� ���̴�.','�������� ���� �𸣴� ����� ���� ���� ���� �� �ְ� ���� �����Ѵ�. ����, �������� ������ �� �����ִ� ������ �����Ͽ� �������� �� ���� �ڵ�� ������ �������� �����غ� �� �ִ�. �پ��ϰ� �������� ������ ���� ����ְ� �н��� �� ������, ��� ������ ���� �ӽ��� ��ġ�� �ʿ� ���� ���� 10���� �ս��� ������ �� �־� �����ϴ�. ������ ������ �ִ��� ���̰� ���� ����� ��ȭ �н����� �߰��� �н��� �� �ְ� �ܰ躰�� �����Ͽ���. ���̷� ���� �ǽ���, ���ǽ� ���� �̷С��� �ƴ� �̷а� �ǽ� �� ������ ������ �������ν�, ��� ������ �ùٷ� �����ϰ� �������� ����� ����� �� �ֵ��� �ȳ��Ѵ�. �� å�� �а� ���� ������ ��ʡ��� ������ ������ ���� ������ �� ���� ���̴�.',to_date('18/10/23','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (356,'��ǻ�Ϳ� ���ͳ�','����ũ����Ʈ ������ �����ϱ�','����ö,�̻��','���',14000,12000,1000,to_date('18/10/02','RR/MM/DD'),245,'12122222',2000,to_date('18/10/10','RR/MM/DD'),'bestseller','����ũ����Ʈ�� �̿��� �ڵ��� ��� �� �ִٴ� �̾߱⸦ ��� �� �� �ֳ���? 
����ũ�μ���Ʈ(Microsoft)���� ���� ������ �ڵ� ������ ����ũ�ڵ�(MakeCode)�� ����ũ����Ʈ�� ������ ������. ����ũ�ڵ忡�� ���� �ڵ带 ����ũ����Ʈ ���忡 ������ �� �ֽ��ϴ�. ����, ��ֹ� �ı��� ���� �ױ� �� ���๰�� ���� �� ���� �� ������ �ݺ� �۾���, ����ũ�ڵ��� ���� ������ �̿��ϸ� �ѹ��� �ҵ� �ڵ�ȭ�� �� �ֽ��ϴ�. 
������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� ���̵��� �����ϴ� ����ũ����Ʈ�� Ȱ���� �ڵ��� ���� ����ְ� ���� �� �ְ� �������� �����ִ� å�Դϴ�. �̷��� ���� ���α׷��� �Ǵ� ���е��� �޲ٴ� ���̶�� ������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� �Բ� ��ǻ�� �����, â�Ǽ�, ���� ������ Ű�� ������!','����ũ����Ʈ�� �̿��� �ڵ��� ��� �� �ִٴ� �̾߱⸦ ��� �� �� �ֳ���? 
����ũ�μ���Ʈ(Microsoft)���� ���� ������ �ڵ� ������ ����ũ�ڵ�(MakeCode)�� ����ũ����Ʈ�� ������ ������. ����ũ�ڵ忡�� ���� �ڵ带 ����ũ����Ʈ ���忡 ������ �� �ֽ��ϴ�. ����, ��ֹ� �ı��� ���� �ױ� �� ���๰�� ���� �� ���� �� ������ �ݺ� �۾���, ����ũ�ڵ��� ���� ������ �̿��ϸ� �ѹ��� �ҵ� �ڵ�ȭ�� �� �ֽ��ϴ�. 
������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� ���̵��� �����ϴ� ����ũ����Ʈ�� Ȱ���� �ڵ��� ���� ����ְ� ���� �� �ְ� �������� �����ִ� å�Դϴ�. �̷��� ���� ���α׷��� �Ǵ� ���е��� �޲ٴ� ���̶�� ������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� �Բ� ��ǻ�� �����, â�Ǽ�, ���� ������ Ű�� ������!','����ũ����Ʈ�� �̿��� �ڵ��� ��� �� �ִٴ� �̾߱⸦ ��� �� �� �ֳ���? 
����ũ�μ���Ʈ(Microsoft)���� ���� ������ �ڵ� ������ ����ũ�ڵ�(MakeCode)�� ����ũ����Ʈ�� ������ ������. ����ũ�ڵ忡�� ���� �ڵ带 ����ũ����Ʈ ���忡 ������ �� �ֽ��ϴ�. ����, ��ֹ� �ı��� ���� �ױ� �� ���๰�� ���� �� ���� �� ������ �ݺ� �۾���, ����ũ�ڵ��� ���� ������ �̿��ϸ� �ѹ��� �ҵ� �ڵ�ȭ�� �� �ֽ��ϴ�. 
������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� ���̵��� �����ϴ� ����ũ����Ʈ�� Ȱ���� �ڵ��� ���� ����ְ� ���� �� �ְ� �������� �����ִ� å�Դϴ�. �̷��� ���� ���α׷��� �Ǵ� ���е��� �޲ٴ� ���̶�� ������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� �Բ� ��ǻ�� �����, â�Ǽ�, ���� ������ Ű�� ������!','����ũ����Ʈ�� �̿��� �ڵ��� ��� �� �ִٴ� �̾߱⸦ ��� �� �� �ֳ���? 
����ũ�μ���Ʈ(Microsoft)���� ���� ������ �ڵ� ������ ����ũ�ڵ�(MakeCode)�� ����ũ����Ʈ�� ������ ������. ����ũ�ڵ忡�� ���� �ڵ带 ����ũ����Ʈ ���忡 ������ �� �ֽ��ϴ�. ����, ��ֹ� �ı��� ���� �ױ� �� ���๰�� ���� �� ���� �� ������ �ݺ� �۾���, ����ũ�ڵ��� ���� ������ �̿��ϸ� �ѹ��� �ҵ� �ڵ�ȭ�� �� �ֽ��ϴ�. 
������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� ���̵��� �����ϴ� ����ũ����Ʈ�� Ȱ���� �ڵ��� ���� ����ְ� ���� �� �ְ� �������� �����ִ� å�Դϴ�. �̷��� ���� ���α׷��� �Ǵ� ���е��� �޲ٴ� ���̶�� ������ũ����Ʈ ���� ���� ������ �����ϱ⡷�� �Բ� ��ǻ�� �����, â�Ǽ�, ���� ������ Ű�� ������!',to_date('18/10/20','RR/MM/DD'));
REM INSERTING into T_SHOPPING_MEMBER
SET DEFINE OFF;
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('admin','1212','����','101','02','1111','2222','010','1111','2222','Y','admin','test.com,non','Y','06253','���� ������ ������� 298 (���ﵿ)','���� ������ ���ﵿ 838','��Ű���� 101ȣ','2000','5','10','2',to_date('18/10/16','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('lee','1212','�̺���','101','02','1111','2222','010','2222','3333','Y','lee','test.com,non','Y','13547','��� ������ �д籸 ����� 25 (������)','��� ������ �д籸 ������ 79-1','��Ű���� 101ȣ','2000','5','10','2',to_date('18/10/23','RR/MM/DD'),'N');
REM INSERTING into T_SHOPPING_ORDER
SET DEFINE OFF;
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (88,92,'lee',344,'�̺���','�ʺ��ڸ� ���� �ڹ����α׷���',1,30000,'image1.jpg','�̺���','010','2222','3333','02','1111','2222','������ȣ:13547<br>���θ� �ּ�:��� ������ �д籸 ����� 25 (������)<br>[���� �ּ�:��� ������ �д籸 ������ 79-1]<br>��Ű���� 101ȣ','�Ϲ��ù�',null,'no','�ſ�ī��<Br>ī���:�Ｚ<br>�Һΰ�����:�Ͻú�','�Ｚ','�Ͻú�','�ش����','cancel_order',to_date('18/10/23','RR/MM/DD'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (89,93,'lee',354,'�̺���','����� ������',1,21600,'����� ������_����.jpg','�̺���','010','2222','3333','02','1111','2222','������ȣ:13547<br>���θ� �ּ�:��� ������ �д籸 ����� 25 (������)<br>[���� �ּ�:��� ������ �д籸 ������ 79-1]<br>��Ű���� 101ȣ','�Ϲ��ù�',null,'no','�ſ�ī��<Br>ī���:�Ｚ<br>�Һΰ�����:�Ͻú�','�Ｚ','�Ͻú�','�ش����','delivering',to_date('18/10/23','RR/MM/DD'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (90,94,'lee',354,'�̺���','����� ������',1,21600,'����� ������_����.jpg','�̺���','010','2222','3333','02','1111','2222','������ȣ:13547<br>���θ� �ּ�:��� ������ �д籸 ����� 25 (������)<br>[���� �ּ�:��� ������ �д籸 ������ 79-1]<br>��Ű���� 101ȣ','�Ϲ��ù�',null,'no','�ſ�ī��<Br>ī���:�Ｚ<br>�Һΰ�����:�Ͻú�','�Ｚ','�Ͻú�','�ش����','cancel_order',to_date('18/10/27','RR/MM/DD'),'010-2222-3333');
REM INSERTING into T_SHOPPING_CART
SET DEFINE OFF;

drop sequence ORDER_SEQ_NUM;
drop sequence SEQ_GOODS_ID;
drop sequence SEQ_IMAGE_ID;
drop sequence SEQ_ORDER_ID;
--------------------------------------------------------
--  DDL for Sequence ORDER_SEQ_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "ORDER_SEQ_NUM"  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GOODS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_GOODS_ID"  MINVALUE 100 MAXVALUE 1000000 INCREMENT BY 1 START WITH 400 CACHE 20 ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IMAGE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_IMAGE_ID"  MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 400 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ORDER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ORDER_ID"  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 NOCACHE  ORDER  NOCYCLE ;
