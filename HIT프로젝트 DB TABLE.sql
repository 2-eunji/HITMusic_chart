DROP TABLE MEMBER;
-- ȸ������
CREATE TABLE MEMBER( 
    ID NVARCHAR2(20),
    PASSWORD NVARCHAR2(20),
    NAME NVARCHAR2(20),
    BIRTH NVARCHAR2(20),
    GENDER NVARCHAR2(20),
    PHONE NVARCHAR2(20),
    EMAIL NVARCHAR2(50),
    ACCOUNT NVARCHAR2(20),
    BALANCE NUMBER,
    TICKET NVARCHAR2(20)
);
SELECT * FROM MEMBER;

INSERT INTO MEMBER VALUES('admin','admin','admin','admin','admin','admin','admin','0','0','����');
INSERT INTO MEMBER VALUES('zzrkdl','1111','�輺��','2020-08-19','��','010-1111-2222','zzrkdl@naver.com','0','0','����');
INSERT INTO MEMBER VALUES('jh2000lee','1111','����ȫ','2020-08-19','��','010-2222-3333','jh2000lee@naver.com','0','0','����');
INSERT INTO MEMBER VALUES('EUNSOL','1111','������','2020-08-19','��','010-3333-4444','eunsol@naver.com','0','0','����');
INSERT INTO MEMBER VALUES('EUNJI','1111','������','2020-08-19','��','010-4444-5555','eunji@naver.com','0','0','����');
INSERT INTO MEMBER VALUES('asdf','1111','asdf','2020-08-19','��','010-5555-6666','asdf@naver.com','0','0','����');
INSERT INTO MEMBER VALUES('zxcv','1111','zxcv','2020-08-19','��','010-6666-7777','zxcv@naver.com','0','0','����');
INSERT INTO MEMBER VALUES('qwer','1111','qwer','2020-08-19','��','010-7777-8888','qwer@naver.com','0','0','����');
SELECT * FROM MEMBER;


-- MUSICLIST
drop table MUSIC;
CREATE TABLE MUSIC( 
    MNUM NUMBER,
    NAME NVARCHAR2(30),
    ARTIST NVARCHAR2(25),
    GENRE NVARCHAR2(20),
    MDATE NVARCHAR2(20),
    PHOTO NVARCHAR2(150),
    HIT NUMBER,
    MV NVARCHAR2(250)
);


--&�� ����ϰ��ϴ� ��ɾ�
SHOW DEFINE;

SET DEFINE OFF;  -- ���� ���
 
SET DEFINE ON;  -- ���� ���

--TOP20 ���
INSERT INTO MUSIC VALUES(1,'�ٽ� ���� �ٴ尡','�Ͼ���','�� / ����','2020.07.18','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/507/074/81507074_1594973911303_1_600x600.JPG',18,'https://www.youtube.com/embed/JAy88PDxMIM');
INSERT INTO MUSIC VALUES(2,'���� �ȿ���','�Ͼ���','�� / ����','2020.07.11','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/500/190/81500190_1595223816956_1_600x600.JPG',16,'https://www.youtube.com/embed/xCVqH32p4MA');
INSERT INTO MUSIC VALUES(3,'How You Like That','BLACKPINK','��/���� / ����','2020.06.26','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/486/282/81486282_1593149417445_1_600x600.JPG',14,'https://www.youtube.com/embed/ioNng23DkIM');
INSERT INTO MUSIC VALUES(4,'Summer Hate (Feat. ��)','���� (ZICO)','��/���� / ����','2020.07.01','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/491/701/81491701_1593584698644_1_600x600.JPG',12,'https://www.youtube.com/embed/oKUEbsJDvuo');
INSERT INTO MUSIC VALUES(5,'Downtown Baby','��� (BLOO)','��/���� / ����','2017.12.06','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/009/688/81009688_1512548445712_1_600x600.JPG',10,'https://www.youtube.com/embed/P07XG1P0ums');
INSERT INTO MUSIC VALUES(6,'PLAY (Feat. â��)','û��','�� / ����','2020.07.06','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/494/130/81494130_1594017964026_1_600x600.JPG',8,'https://www.youtube.com/embed/jPFrHYXYxak');
INSERT INTO MUSIC VALUES(7,'����� �� (pporappippam)','����','�� / ����','2020.06.29','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/487/607/81487607_1593415876116_1_600x600.JPG',2,'https://www.youtube.com/embed/H8YW1tlsmE8');
INSERT INTO MUSIC VALUES(8,'���� (Feat. SUGA of BTS)','������ (IU)','�� / ����','2020.05.06','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/434/107/81434107_1588747979387_1_600x600.JPG',6,'https://www.youtube.com/embed/TgOu00Mf3kI');
INSERT INTO MUSIC VALUES(9,'Dolphin','�����̰� (OH MY GIRL)','�� / ����','2020.04.27','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/428/715/81428715_1587972077151_1_600x600.JPG',4,'https://www.youtube.com/embed/oaRTMjLdiDw');
INSERT INTO MUSIC VALUES(10,'�Ʒ���','������','��� / OST','2020.03.27','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/398/219/81398219_1585214325118_1_600x600.JPG',1,'https://www.youtube.com/embed/3DOkxQ3HDXE');
INSERT INTO MUSIC VALUES(11,'����ϰ� �� �� �˾Ҿ�','���̵�','��� / OST','2020.05.22','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/449/172/81449172_1590049611530_1_600x600.JPG',13,'https://www.youtube.com/embed/rOCymN-Rwiw');
INSERT INTO MUSIC VALUES(12,'��� ���� (Prod. by VAN.C)','����','�ε� / ����','2020.03.05','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/379/985/81379985_1583393846510_1_600x600.JPG',5,'https://www.youtube.com/embed/rVXeArOQIs4');
INSERT INTO MUSIC VALUES(13,'Blueming','������ (IU)','�� / ����','2019.11.18','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/297/613/81297613_1574066356132_1_600x600.JPG',19,'https://www.youtube.com/embed/D1PvIWdJ8xo');
INSERT INTO MUSIC VALUES(14,'�ƹ��뷡','���� (ZICO)','��/���� / ����','2020.01.13','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/343/969/81343969_1578901334224_1_600x600.JPG',3,'https://www.youtube.com/embed/UuV2BmJ1p_I');
INSERT INTO MUSIC VALUES(15,'����','��ȣ (Gaho)','��� / OST','2020.02.01','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/352/464/81352464_1580457691124_1_600x600.JPG',17,'https://www.youtube.com/embed/O0StKlRHVeE');
INSERT INTO MUSIC VALUES(16,'2002','Anne-Marie','�� / POP','2018.08.03','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/031/556/81031556_1524793395076_1_600x600.JPG',7,'https://www.youtube.com/embed/Il-an3K9pjg');
INSERT INTO MUSIC VALUES(17,'�ʿ��� ��, ������ ��','�̵��� �Ķ��','��� / OST','2020.05.29','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/455/382/81455382_1590654643727_1_600x600.JPG',9,'https://www.youtube.com/embed/tLGHKyZs0Gk');
INSERT INTO MUSIC VALUES(18,'����� ����� (Feat. ���� (BAEKHYUN))','�����������','�ε� / ����','2020.05.13','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/435/206/81435206_1589358597371_1_600x600.JPG',20,'https://www.youtube.com/embed/L8UUYfe6-UA');
INSERT INTO MUSIC VALUES(19,'Psycho','Red Velvet (���座��)','�� / ����','2019.12.23','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/337/646/81337646_1577086446015_1_600x600.JPG',9,'https://www.youtube.com/embed/uR8Mrt1IpXg');
INSERT INTO MUSIC VALUES(20,'��','��Ŵ','�ҿ� / ����','2016.06.21','https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/832/600/80832600_1466415901146_1_600x600.JPG',11,'https://www.youtube.com/embed/9jFZdu0zTEA');

-- 7�� 28�� mv �÷��߰� 
commit;

SELECT * FROM MUSIC ORDER BY HIT DESC;
SELECT * FROM MUSIC WHERE ARTIST LIKE '%�Ͼ���%';
SELECT * FROM MUSIC WHERE ARTIST LIKE '%����%' OR NAME LIKE '%How%';

DROP TABLE MUSICLIST;
-- MusicList 
CREATE TABLE MUSICLIST(
LISTNUM NUMBER,
NAME NVARCHAR2(30),
ARTIST NVARCHAR2(25),
PHOTO NVARCHAR2(150)
);
-- LIST ī��Ʈ ������ ����
CREATE SEQUENCE PLAYLIST_SEQ START WITH 1 INCREMENT BY 1;
DROP SEQUENCE PLAYLIST_SEQ;
DROP TABLE MUSICLIST;

SELECT * FROM MUSICLIST ORDER BY LISTNUM ASC;

commit;
DELETE FROM MUSICLIST ;


DROP TABLE BOARD;
SELECT * FROM BOARD;
-- ��������
CREATE TABLE BOARD(
    BNUM NUMBER,
    BPART NVARCHAR2(20),
    BTITLE NVARCHAR2(50),
    BCONTENT NVARCHAR2(500),
    BHIT NUMBER,
    BDATE DATE,
    BFILE NVARCHAR2(50)
);

INSERT INTO BOARD VALUES('100','����','HIT�Դϴ�.(����1)','�����մϴ�','1','20/07/26','�����.jpg');
INSERT INTO BOARD VALUES('101','��ǥ','HIT�Դϴ�.(��ǥ1)','��ǥ�մϴ�','1','20/08/01','�����.jpg');
INSERT INTO BOARD VALUES('102','����','HIT�Դϴ�.(����2)','�����մϴ�','1','20/07/27','�����.jpg');
INSERT INTO BOARD VALUES('103','��ǥ','HIT�Դϴ�.(��ǥ2)','��ǥ�մϴ�','1','20/08/02','�����.jpg');
INSERT INTO BOARD VALUES('104','����','HIT�Դϴ�.(����3)','�����մϴ�','1','20/07/28','�����.jpg');
INSERT INTO BOARD VALUES('105','��ǥ','HIT�Դϴ�.(��ǥ3)','��ǥ�մϴ�','1','20/08/03','�����.jpg');
INSERT INTO BOARD VALUES('106','����','HIT�Դϴ�.(����4)','�����մϴ�','1','20/07/29','�����.jpg');
INSERT INTO BOARD VALUES('107','��ǥ','HIT�Դϴ�.(��ǥ4)','��ǥ�մϴ�','1','20/08/04','�����.jpg');
INSERT INTO BOARD VALUES('108','����','HIT�Դϴ�.(����5)','�����մϴ�','1','20/07/30','�����.jpg');
INSERT INTO BOARD VALUES('109','��ǥ','HIT�Դϴ�.(��ǥ5)','��ǥ�մϴ�','1','20/08/05','�����.jpg');
INSERT INTO BOARD VALUES('110','����','HIT�Դϴ�.(����6)','�����մϴ�','1','20/07/31','�����.jpg');

-- �۹�ȣ ī��Ʈ
CREATE SEQUENCE B_SEQ START WITH 1 INCREMENT BY 1;

CREATE TABLE B_LIST(
    PAGE NUMBER,
    MAXPAGE NUMBER,
    STARTPAGE NUMBER,
    ENDPAGE NUMBER,
    LISTCOUNT NUMBER
);
DROP TABLE B_LIST;
DROP VIEW B_LIST;

-- �������̺� (��ü)
CREATE VIEW B_LIST AS 
SELECT B.*, ROW_NUMBER() OVER(ORDER BY BNUM DESC) AS BL
FROM BOARD B;
-- �������̺� (����)
CREATE VIEW BS_LIST1 AS 
SELECT B.*, ROW_NUMBER() OVER(ORDER BY BNUM DESC) AS BSL1
FROM BOARD B WHERE BPART='����';
-- �������̺� (��ǥ)
CREATE VIEW BS_LIST2 AS 
SELECT B.*, ROW_NUMBER() OVER(ORDER BY BNUM DESC) AS BSL2
FROM BOARD B WHERE BPART='��ǥ';

-- ��ǥ

DROP TABLE VOTE;
CREATE TABLE VOTE(
    VNUM NUMBER,
    VNAME NVARCHAR2(30),
    VARTIST NVARCHAR2(25),
    VPHOTO NVARCHAR2(150),
    VHIT NUMBER
);

INSERT INTO VOTE VALUES(
1,
'�ٽ� ���� �ٴ尡',
'�Ͼ���',
'https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/507/074/81507074_1594973911303_1_600x600.JPG',
0);

 

INSERT INTO VOTE VALUES(
2,
'How You Like That',
'BLACKPINK',
'https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/486/282/81486282_1593149417445_1_600x600.JPG',
14
);
-- Ŀ�� ���ּ���~~ ��� �����
COMMIT;

DROP TABLE TICKET;
-- �̿�� ���̺�
CREATE TABLE TICKET(
    NUM NUMBER,
    TICKET NVARCHAR2(20),
    BALANCE NUMBER
);

SELECT * FROM TICKET;
INSERT INTO TICKET VALUES(1,'30�� �̿��',30000);
INSERT INTO TICKET VALUES(2,'15�� �̿��',15000);
INSERT INTO TICKET VALUES(3,'5�� �̿��',5000);
INSERT INTO TICKET VALUES(4,'3�� �̿��',3000);
DROP TABLE TICKET;
COMMIT;

-- DATE ����
ALTER SESSION 
SET NLS_DATE_FORMAT='YYYY/MM/DD HH24:MI:SS';

DROP TABLE C_COMMENT;
-- musicInfo ���â
CREATE TABLE C_COMMENT(
CMUSIC NVARCHAR2(30),
CID NVARCHAR2(20),
CCONTENT NVARCHAR2(500),
CHIT NUMBER,
CDATE DATE
);

SELECT * FROM C_COMMENT WHERE CMUSIC='����� ����� (Feat. ���� (BAEKHYUN))' ORDER BY CDATE DESC;

COMMIT;


