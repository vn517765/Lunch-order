use�@master;
go
drop DATABASE iii02_01;
go

CREATE DATABASE iii02_01;
GO

ALTER AUTHORIZATION ON DATABASE::[iii02_01] TO [sa]--�W�[SA�ϥΪ��v��


use iii02_01;
/*
DROP TABLE ���a��L��T;
DROP TABLE ���a����;
DROP TABLE ������;
DROP TABLE �q�ʤH��L��T;
DROP TABLE �q�ʳ�Ӷ�;
DROP TABLE �h�q��Ӷ�;
DROP TABLE ���f��Ӷ�;
DROP TABLE ���f��Ӷ�;
DROP TABLE ������;
DROP TABLE ���f��;
DROP TABLE ���f��;
DROP TABLE �h�q��;
DROP TABLE �q�ʳ�;
DROP TABLE �q�ʤH;
DROP TABLE ���;
DROP TABLE ���a;
*/




CREATE TABLE ���a(
���a�s�� int IDENTITY(1,1)  PRIMARY KEY,
���W varchar(20)  not null ,
�q�� varchar(15)  not null ,
�a�} varchar(50)   ,
�w�R�� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE ���a��L��T(
���a�s�� int  not null ,
�~�e�ɶ� int DEFAULT 0  ,
�̱߭q�ʮɶ� varchar(30)   ,
�~�e�̻��Z�� int DEFAULT 0  ,
�~�e�̧C���B int DEFAULT 0  ,
�~�e�̧C�ƶq int DEFAULT 1  ,
���a�Ϥ� varchar(100)   ,
�Ƶ� varchar(50)   );
CREATE TABLE ���a����(
���a�s�� int  not null ,
���a���� int DEFAULT 0  ,
�֭p�q�ʦ��� int DEFAULT 0  ,
�֭p�q�ʪ��B int DEFAULT 0  ,
�ֿn�q�ʭӼ� int DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE ���(
�~�W�s�� int IDENTITY(1000,1)  PRIMARY KEY,
�~�W varchar(50)  not null ,
��� int  not null ,
���a�s�� int  not null ,
�������� varchar(50)   ,
�w�R�� bit DEFAULT 0  ,
���Ϥ� varchar(100)   ,
�Ƶ� varchar(50)   );
CREATE TABLE ������(
�~�W�s�� int  not null ,
������ int DEFAULT 0  ,
�֭p�q�ʦ��� int DEFAULT 0  ,
�ֿn�q�ʭӼ� int DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE �q�ʤH(
�q�ʤH�s�� int IDENTITY(5000,1)  PRIMARY KEY,
�m�W varchar(30)  not null ,
�q�� varchar(15)  not null ,
�����O varchar(10)  not null ,
�W�Ҧa�I varchar(30)  not null ,
�w�R�� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE �q�ʤH��L��T(
�q�ʤH�s�� int  not null ,
�H�Ϋ׵��� int DEFAULT 0  ,
�w���I�ڦ��� int DEFAULT 0  ,
�w�����f���� int DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE �q�ʳ�(
�q�ʳ�s�� int IDENTITY(10000,1)  PRIMARY KEY,
�g�� int  not null ,
�q�ʤ�� date DEFAULT GETDATE()  ,
�q�ʪ��A varchar(10) DEFAULT '�q�ʤ�'  ,
�q�ʴ��� bit DEFAULT 0  ,
�w�R�� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );

CREATE TABLE �q�ʳ�Ӷ�(
�q�ʳ�s�� int  not null ,
�q�ʳ�Ӷ��s�� int IDENTITY(10000,1)  PRIMARY KEY,
�q�ʤH int  not null ,
�~�W�s�� int  not null ,
�q�ʼƶq int DEFAULT 0  ,
��� int DEFAULT 0  ,
�q�ʮɶ� datetime DEFAULT GETDATE()  ,
�Ӷ��I�ڽT�{ bit DEFAULT 0  ,
�w�R�� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE �h�q��(
�h�q��s�� int IDENTITY(10000,1)  PRIMARY KEY,
�q�ʳ�s�� int  not null ,
�g�� int  not null ,
�h�q��� date DEFAULT GETDATE()  ,
�h�q��] varchar(50)  not null ,
�h�ڴ��� bit DEFAULT 0  ,
�h�q���� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE �h�q��Ӷ�(
�h�q��s�� int  not null ,
�h�q��Ӷ��s�� int IDENTITY(10000,1)  PRIMARY KEY,
�q�ʳ�Ӷ��s�� int  not null ,
�q�ʤH int  not null ,
�~�W�s�� int  not null ,
�h�q�ƶq int DEFAULT 0  ,
��� int  not null ,
�h�ڪ��B�p�p int DEFAULT 0  ,
�Ӷ��h�ڽT�{ bit DEFAULT 0  ,
�h�ڮɶ� datetime   ,
�Ƶ� varchar(50)   );
CREATE TABLE ���f��(
���f��s�� int IDENTITY(10000,1)  PRIMARY KEY,
�q�ʳ�s�� int  not null ,
�g�� int  not null ,
���f��� date DEFAULT GETDATE()  ,
���f���� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE ���f��Ӷ�(
���f��s�� int  not null ,
���f��Ӷ��s�� int IDENTITY(10000,1)  PRIMARY KEY,
�q�ʳ�Ӷ��s�� int  not null ,
���f�H int  not null ,
�~�W�s�� int  not null ,
���f�ƶq int DEFAULT 0  ,
���f�T�{ bit DEFAULT 0  ,
���f�ɶ� datetime   ,
�Ƶ� varchar(50)   );
CREATE TABLE ���f��(
���f��s�� int IDENTITY(10000,1)  PRIMARY KEY,
���f��s�� int  not null ,
�g�� int  not null ,
���f��� date DEFAULT GETDATE()  ,
���f���� bit DEFAULT 0  ,
�Ƶ� varchar(50)   );
CREATE TABLE ���f��Ӷ�(
���f��s�� int  not null ,
���f��Ӷ��s�� int IDENTITY(10000,1)  PRIMARY KEY,
���f��Ӷ��s�� int  not null ,
�q�ʤH int  not null ,
�~�W�s�� int  not null ,
���f�ƶq int DEFAULT 0  ,
�Ӷ����f�T�{ bit DEFAULT 0  ,
���f�ɶ� datetime   ,
�Ƶ� varchar(50)   );
CREATE TABLE ������(
���f��s�� int  not null ,
�����H int  not null ,
�~�W�s�� int  not null ,
�q�ʼƶq int DEFAULT 0  ,
���a���� int DEFAULT 0  ,
������ int DEFAULT 0  ,
������� date DEFAULT GETDATE()  ,
���������T�{ bit DEFAULT 0  ,
�Ƶ� varchar(50));

go

ALTER TABLE ���a��L��T ADD CONSTRAINT FK_���a��L��T���a�s�� FOREIGN KEY (���a�s��) REFERENCES ���a(���a�s��);
ALTER TABLE ���a���� ADD CONSTRAINT FK_���a�������a�s�� FOREIGN KEY (���a�s��) REFERENCES ���a(���a�s��);
ALTER TABLE ��� ADD CONSTRAINT FK_��橱�a�s�� FOREIGN KEY (���a�s��) REFERENCES ���a(���a�s��);
ALTER TABLE ������ ADD CONSTRAINT FK_�������~�W�s�� FOREIGN KEY (�~�W�s��) REFERENCES ���(�~�W�s��);
ALTER TABLE �q�ʤH��L��T ADD CONSTRAINT FK_�q�ʤH��L��T�q�ʤH�s�� FOREIGN KEY (�q�ʤH�s��) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE �q�ʳ� ADD CONSTRAINT FK_�q�ʳ�g�� FOREIGN KEY (�g��) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE �q�ʳ�Ӷ� ADD CONSTRAINT FK_�q�ʳ�Ӷ��q�ʳ�s�� FOREIGN KEY (�q�ʳ�s��) REFERENCES �q�ʳ�(�q�ʳ�s��);
ALTER TABLE �q�ʳ�Ӷ� ADD CONSTRAINT FK_�q�ʳ�Ӷ��q�ʤH FOREIGN KEY (�q�ʤH) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE �q�ʳ�Ӷ� ADD CONSTRAINT FK_�q�ʳ�Ӷ��~�W�s�� FOREIGN KEY (�~�W�s��) REFERENCES ���(�~�W�s��);
ALTER TABLE �h�q�� ADD CONSTRAINT FK_�h�q��q�ʳ�s�� FOREIGN KEY (�q�ʳ�s��) REFERENCES �q�ʳ�(�q�ʳ�s��);
ALTER TABLE �h�q�� ADD CONSTRAINT FK_�h�q��g�� FOREIGN KEY (�g��) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE �h�q��Ӷ� ADD CONSTRAINT FK_�h�q��Ӷ��h�q��s�� FOREIGN KEY (�h�q��s��) REFERENCES �h�q��(�h�q��s��);
ALTER TABLE �h�q��Ӷ� ADD CONSTRAINT FK_�h�q��Ӷ��q�ʳ�Ӷ��s�� FOREIGN KEY (�q�ʳ�Ӷ��s��) REFERENCES �q�ʳ�Ӷ�(�q�ʳ�Ӷ��s��);
ALTER TABLE �h�q��Ӷ� ADD CONSTRAINT FK_�h�q��Ӷ��q�ʤH FOREIGN KEY (�q�ʤH) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE �h�q��Ӷ� ADD CONSTRAINT FK_�h�q��Ӷ��~�W�s�� FOREIGN KEY (�~�W�s��) REFERENCES ���(�~�W�s��);
ALTER TABLE ���f�� ADD CONSTRAINT FK_���f��q�ʳ�s�� FOREIGN KEY (�q�ʳ�s��) REFERENCES �q�ʳ�(�q�ʳ�s��);
ALTER TABLE ���f�� ADD CONSTRAINT FK_���f��g�� FOREIGN KEY (�g��) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ����f��s�� FOREIGN KEY (���f��s��) REFERENCES ���f��(���f��s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ��q�ʳ�Ӷ��s�� FOREIGN KEY (�q�ʳ�Ӷ��s��) REFERENCES �q�ʳ�Ӷ�(�q�ʳ�Ӷ��s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ����f�H FOREIGN KEY (���f�H) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ��~�W�s�� FOREIGN KEY (�~�W�s��) REFERENCES ���(�~�W�s��);
ALTER TABLE ���f�� ADD CONSTRAINT FK_���f�榬�f��s�� FOREIGN KEY (���f��s��) REFERENCES ���f��(���f��s��);
ALTER TABLE ���f�� ADD CONSTRAINT FK_���f��g�� FOREIGN KEY (�g��) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ����f��s�� FOREIGN KEY (���f��s��) REFERENCES ���f��(���f��s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ����f��Ӷ��s�� FOREIGN KEY (���f��Ӷ��s��) REFERENCES ���f��Ӷ�(���f��Ӷ��s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ��q�ʤH FOREIGN KEY (�q�ʤH) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE ���f��Ӷ� ADD CONSTRAINT FK_���f��Ӷ��~�W�s�� FOREIGN KEY (�~�W�s��) REFERENCES ���(�~�W�s��);
ALTER TABLE ������ ADD CONSTRAINT FK_��������f��s�� FOREIGN KEY (���f��s��) REFERENCES ���f��(���f��s��);
ALTER TABLE ������ ADD CONSTRAINT FK_����������H FOREIGN KEY (�����H) REFERENCES �q�ʤH(�q�ʤH�s��);
ALTER TABLE ������ ADD CONSTRAINT FK_������~�W�s�� FOREIGN KEY (�~�W�s��) REFERENCES ���(�~�W�s��);




INSERT INTO ���a (���W,�q��,�a�}) VALUES('���v���X��','07-235-1968','800�������s���Ϥ��X�@��57��');
INSERT INTO ���a (���W,�q��,�a�}) VALUES('���_�K��','(07)5588-123','����������ϸθ۸�169��');
INSERT INTO ���a (���W,�q��,�a�}) VALUES('�B��','07-2210779','�����s���ϪL�ˤ@��31��');
INSERT INTO ���a (���W,�q��,�a�}) VALUES('�K�K�y','07-3964862','�������T���ϩ��N��25��');
INSERT INTO ���a (���W,�q��,�a�}) VALUES('������N��','07-7138822','�������d���ϪL�u��34��');
INSERT INTO ���a (���W,�q��,�a�}) VALUES('�ߦh��','07-5577722','����������ϦۥѤG���s�����');
select * from ���a;

INSERT INTO ���a��L��T (���a�s��,�~�e�ɶ�,�̱߭q�ʮɶ�,�~�e�̻��Z��,�~�e�̧C���B,�~�e�̧C�ƶq,���a�Ϥ�) VALUES(1,'30','AM1000',20,200,4,'http://www.jengjong.tw/upload/location/20100428123442840.jpg');
INSERT INTO ���a��L��T (���a�s��,�~�e�ɶ�,�̱߭q�ʮɶ�,�~�e�̻��Z��,�~�e�̧C���B,�~�e�̧C�ƶq,���a�Ϥ�) VALUES(2,'60','AM0900',10,300,6,'http://www.mibo.com.tw/images/map-3.jpg');
INSERT INTO ���a��L��T (���a�s��,�~�e�ɶ�,�̱߭q�ʮɶ�,�~�e�̻��Z��,�~�e�̧C���B,�~�e�̧C�ƶq,���a�Ϥ�) VALUES(3,'40','AM0930',10,150,3,'http://www.liujiang-tw.com/photo/index-img.jpg');
INSERT INTO ���a��L��T (���a�s��,�~�e�ɶ�,�̱߭q�ʮɶ�,�~�e�̻��Z��,�~�e�̧C���B,�~�e�̧C�ƶq,���a�Ϥ�) VALUES(4,'60','AM1000',20,400,5,'https://www.walkerland.com.tw/image/poi/p14319/m61256/7a1bacfedbacdf1b391772d0bfb8f542fa0de506.jpg');
INSERT INTO ���a��L��T (���a�s��,�~�e�ɶ�,�̱߭q�ʮɶ�,�~�e�̻��Z��,�~�e�̧C���B,�~�e�̧C�ƶq,���a�Ϥ�) VALUES(5,'45','AM1100',15,300,4,'http://www.eoeo.com.tw/upload/312/201505121107312_2.png');
INSERT INTO ���a��L��T (���a�s��,�~�e�ɶ�,�̱߭q�ʮɶ�,�~�e�̻��Z��,�~�e�̧C���B,�~�e�̧C�ƶq,���a�Ϥ�) VALUES(6,'60','AM1000',15,500,1,'http://17d.com.tw/_pos/fascia/T12101612101413666/G.jpg');
select * from ���a��L��T;

INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�T�M���׶�',75,1,'http://www.jengjong.tw/upload/food/20140311185355492.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�c�O���B��',75,1,'http://www.jengjong.tw/upload/food/20140311185457669.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�}�L�p�ƶ�',75,1,'http://www.jengjong.tw/upload/food/20140311185537529.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�����i�ͫK��',80,2,'http://www.mibo.com.tw/4/01.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('���W�K��(�۵P�K��)',80,2,'http://www.mibo.com.tw/4/02.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�����ư��K��',80,2,'http://www.mibo.com.tw/4/03.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�����L�� + ���J',75,3,'');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�۵P�� �� �L ��',75,3,'');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�� �� �� ��',75,3,'');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('���L��',110,4,'https://www.walkerland.com.tw/image/poi/p14319/m61256/6887ce169a8ca837810e189a940a959b40c439d3.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�ư���',100,4,'https://www.walkerland.com.tw/image/poi/p14319/m61256/6887ce169a8ca837810e189a940a959b40c439d3.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('���׶�',110,4,'https://www.walkerland.com.tw/image/poi/p14319/m61256/6887ce169a8ca837810e189a940a959b40c439d3.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�z���J����',90,5,'http://www.eoeo.com.tw/upload/002/201712041153002_2.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('��ὼ����',90,5,'http://www.eoeo.com.tw/upload/222/201505181000222_2.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('��N�N��',75,5,'http://www.eoeo.com.tw/upload/483/201505211610483_2.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('��N��',75,5,'http://www.eoeo.com.tw/upload/542/201505211619542_2.jpg');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�馡�p���ޱ� �\��/���Q�s/�J�]��',70,6,'');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�@���j���� �\��/���Q�s/�J�]��',75,6,'');
INSERT INTO ��� (�~�W,���,���a�s��,���Ϥ�) VALUES('�����w��ަ� �\��/���Q�s/�J�]��',70,6,'');
select * from ���;



INSERT INTO �q�ʤH (�m�W,�q��,�����O,�W�Ҧa�I) VALUES('AAA','111111','�ǭ�','�Ĥ@�Ы�');
INSERT INTO �q�ʤH (�m�W,�q��,�����O,�W�Ҧa�I) VALUES('BBB','2222222','�ǭ�','�ĤG�Ы�');
INSERT INTO �q�ʤH (�m�W,�q��,�����O,�W�Ҧa�I) VALUES('CCC','33333333','�ǭ�','�ĤT�Ы�');
INSERT INTO �q�ʤH (�m�W,�q��,�����O,�W�Ҧa�I) VALUES('DDD','44444444','�ǭ�','�ĥ|�Ы�');
INSERT INTO �q�ʤH (�m�W,�q��,�����O,�W�Ҧa�I) VALUES('EEE','5555555','�ǭ�','�Ĥ��Ы�');
select * from �q�ʤH;

/*drop VIEW ���aALL;*/
go
CREATE VIEW ���aALL as 
SELECT	dbo.���a.*, dbo.���a��L��T.�~�e�ɶ�, dbo.���a��L��T.�̱߭q�ʮɶ�, dbo.���a��L��T.�~�e�̻��Z��,dbo.���a��L��T.�~�e�̧C���B, dbo.���a��L��T.�~�e�̧C�ƶq, dbo.���a��L��T.���a�Ϥ�, dbo.���a��L��T.�Ƶ� AS ��L�Ƶ�, dbo.���a����.���a����, dbo.���a����.�֭p�q�ʦ���, dbo.���a����.�֭p�q�ʪ��B, dbo.���a����.�ֿn�q�ʭӼ�, dbo.���a����.�Ƶ� AS �����Ƶ�
FROM dbo.���a INNER JOIN dbo.���a��L��T ON dbo.���a.���a�s�� = dbo.���a��L��T.���a�s�� INNER JOIN dbo.���a���� ON dbo.���a.���a�s�� = dbo.���a����.���a�s��
go

/*update ���aALL set �Ƶ�='111';*/
select * from ���aALL;

go
CREATE VIEW ���ALL as 
SELECT	dbo.���.*, dbo.������.������, dbo.������.�֭p�q�ʦ���, dbo.������.�ֿn�q�ʭӼ�, dbo.������.�Ƶ� AS �����Ƶ�
FROM	dbo.��� INNER JOIN dbo.������ ON dbo.���.�~�W�s�� = dbo.������.�~�W�s��;
go

select * from ���ALL;

go
CREATE VIEW �q�ʤHALL as 
SELECT	dbo.�q�ʤH.*, dbo.�q�ʤH��L��T.�H�Ϋ׵���, dbo.�q�ʤH��L��T.�w���I�ڦ���,dbo.�q�ʤH��L��T.�w�����f����, dbo.�q�ʤH��L��T.�Ƶ� AS ��L�Ƶ�
FROM	dbo.�q�ʤH INNER JOIN dbo.�q�ʤH��L��T ON dbo.�q�ʤH.�q�ʤH�s�� = dbo.�q�ʤH��L��T.�q�ʤH�s��;
go
select * from �q�ʤHALL;

go


go
CREATE VIEW ���� as 
SELECT	* FROM	dbo.�q�ʤH where �w�R��=0;
go

CREATE VIEW �\�U as 
SELECT	* FROM	dbo.���a where �w�R��=0;
go




CREATE VIEW ���info as 
SELECT          dbo.���.�~�W�s��, dbo.���.�~�W, dbo.���.���, dbo.���.���a�s��, dbo.���.��������, dbo.���.�w�R��, 
                            dbo.���.���Ϥ�, dbo.���.�Ƶ�, dbo.���a.���W, dbo.���a.�q��, dbo.���a.�a�}, dbo.���a.�w�R�� AS ���a�w�R��, 
                            dbo.���a.�Ƶ� AS ���a�Ƶ�
FROM              dbo.���a INNER JOIN
                            dbo.��� ON dbo.���a.���a�s�� = dbo.���.���a�s��
go


CREATE VIEW �q�ʳ�Ӷ��p�p as 
SELECT          �q�ʳ�s��, �q�ʳ�Ӷ��s��, ���, �q�ʼƶq, ��� * �q�ʼƶq AS �p�p, �q�ʤH, �~�W�s��, �Ӷ��I�ڽT�{
FROM              dbo.�q�ʳ�Ӷ�
WHERE          (�w�R�� = 0)
GROUP BY   �q�ʳ�s��, �q�ʳ�Ӷ��s��, ���, �q�ʼƶq, �~�W�s��, �q�ʤH, �Ӷ��I�ڽT�{
go

CREATE VIEW �q�ʳ�Ӷ����I�� as 
SELECT          �q�ʳ�s��, �q�ʳ�Ӷ��s��, �p�p, �q�ʤH
FROM              dbo.�q�ʳ�Ӷ��p�p
WHERE          (�Ӷ��I�ڽT�{ = 0)
GROUP BY   �q�ʳ�s��, �q�ʳ�Ӷ��s��, �p�p, �q�ʤH
go

SELECT          �q�ʳ�s��, SUM(�p�p) AS ���I�ڪ��B
FROM              dbo.�q�ʳ�Ӷ����I��
GROUP BY   �q�ʳ�s��

go

CREATE VIEW �q�ʳ楼�I�ڪ��B as
SELECT          �q�ʳ�s��, SUM(�p�p) AS ���I�ڪ��B
FROM              dbo.�q�ʳ�Ӷ����I��
GROUP BY   �q�ʳ�s��
go

CREATE VIEW �q�ʳ�H�O�p�p as
SELECT          �q�ʳ�s��, �q�ʤH, SUM(�q�ʼƶq) AS �ӤH�q�ʼƶq, SUM(�p�p) AS �ӤH�q�ʪ��B
FROM              dbo.�q�ʳ�Ӷ��p�p
GROUP BY   �q�ʳ�s��, �q�ʤH
go

CREATE VIEW �q�ʳ�~���p�p as
SELECT          �q�ʳ�s��, �~�W�s��, SUM(�q�ʼƶq) AS �~���ƶq�p�p, SUM(�p�p) AS �~�����B�p�p
FROM              dbo.�q�ʳ�Ӷ��p�p
GROUP BY   �q�ʳ�s��, �~�W�s��

go



CREATE VIEW �q�ʳ�Ӷ�info as 
SELECT          dbo.�q�ʳ�Ӷ�.�q�ʳ�Ӷ��s��, dbo.�q�ʳ�Ӷ�.�q�ʳ�s��, dbo.�q�ʳ�Ӷ�.�q�ʤH, dbo.�q�ʤH.�m�W, 
                            dbo.�q�ʳ�Ӷ�.�~�W�s��, dbo.���.�~�W, dbo.�q�ʳ�Ӷ�.�q�ʼƶq, dbo.�q�ʳ�Ӷ�.���, dbo.���.���a�s��, 
                            dbo.���a.���W, dbo.���a.�q��, dbo.���a.�a�}, dbo.�q�ʳ�Ӷ�.�q�ʮɶ�, dbo.�q�ʳ�Ӷ�.�Ӷ��I�ڽT�{, 
                            dbo.�q�ʳ�Ӷ�.�Ƶ�, dbo.�q�ʳ�Ӷ�.�w�R��, dbo.�q�ʳ�Ӷ��p�p.�p�p, dbo.�q�ʳ�.�q�ʪ��A, 
                            dbo.�q�ʳ�.�q�ʴ���, dbo.�q�ʳ�.�w�R�� AS �q�ʳ�w�R��
FROM              dbo.�q�ʳ�Ӷ� INNER JOIN
                            dbo.�q�ʤH ON dbo.�q�ʳ�Ӷ�.�q�ʤH = dbo.�q�ʤH.�q�ʤH�s�� INNER JOIN
                            dbo.��� ON dbo.�q�ʳ�Ӷ�.�~�W�s�� = dbo.���.�~�W�s�� INNER JOIN
                            dbo.���a ON dbo.���.���a�s�� = dbo.���a.���a�s�� INNER JOIN
                            dbo.�q�ʳ� ON dbo.�q�ʳ�Ӷ�.�q�ʳ�s�� = dbo.�q�ʳ�.�q�ʳ�s��  FULL OUTER JOIN
                            dbo.�q�ʳ�Ӷ��p�p ON dbo.�q�ʳ�Ӷ�.�q�ʳ�Ӷ��s�� = dbo.�q�ʳ�Ӷ��p�p.�q�ʳ�Ӷ��s��
GO

CREATE VIEW �q�ʳ�q�ʤH�� as 
SELECT          �q�ʳ�s��, COUNT(�q�ʤH) AS �q�ʤH��
FROM              dbo.�q�ʳ�H�O�p�p
GROUP BY   �q�ʳ�s��
GO

CREATE VIEW �q�ʳ�~���ƶq as 
SELECT          �q�ʳ�s��, COUNT(�~�W�s��) AS �q�ʫ~���ƶq
FROM              dbo.�q�ʳ�~���p�p
GROUP BY   �q�ʳ�s��
GO

GO
CREATE VIEW �q�ʳ��`�p as 
SELECT          �q�ʳ�s��, SUM(�~���ƶq�p�p) AS �q���`�ƶq, SUM(�~�����B�p�p) AS �q���`���B
FROM              dbo.�q�ʳ�~���p�p
GROUP BY   �q�ʳ�s��
GO

go
CREATE VIEW �q�ʳ�info as 
SELECT DISTINCT 
                            dbo.�q�ʳ�.�q�ʳ�s��, dbo.�q�ʳ�.�g�� AS �g��ID, dbo.�q�ʤH.�m�W AS �g��m�W, dbo.�q�ʳ�.�q�ʤ��, 
                            dbo.�q�ʳ�.�q�ʪ��A, dbo.�q�ʳ�.�q�ʴ���, dbo.�q�ʳ�.�w�R��, dbo.�q�ʳ�.�Ƶ�, dbo.�q�ʳ��`�p.�q���`�ƶq, 
                            dbo.�q�ʳ��`�p.�q���`���B, dbo.�q�ʳ�Ӷ�info.���a�s��, dbo.�q�ʳ�Ӷ�info.���W, dbo.�q�ʳ�Ӷ�info.�q��, 
                            dbo.�q�ʳ�Ӷ�info.�a�}, dbo.�q�ʳ�~���ƶq.�q�ʫ~���ƶq, dbo.�q�ʳ�q�ʤH��.�q�ʤH��, 
                            dbo.�q�ʳ楼�I�ڪ��B.���I�ڪ��B
FROM              dbo.�q�ʳ� INNER JOIN
                            dbo.�q�ʤH ON dbo.�q�ʳ�.�g�� = dbo.�q�ʤH.�q�ʤH�s�� FULL OUTER JOIN
                            dbo.�q�ʳ��`�p ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ��`�p.�q�ʳ�s�� INNER JOIN
                            dbo.�q�ʳ�H�O�p�p ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ�H�O�p�p.�q�ʳ�s�� FULL OUTER JOIN
                            dbo.�q�ʳ�~���p�p ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ�~���p�p.�q�ʳ�s�� FULL OUTER JOIN
                            dbo.�q�ʳ�Ӷ�info ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ�Ӷ�info.�q�ʳ�s�� FULL OUTER JOIN
                            dbo.�q�ʳ�~���ƶq ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ�~���ƶq.�q�ʳ�s�� FULL OUTER JOIN
                            dbo.�q�ʳ�q�ʤH�� ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ�q�ʤH��.�q�ʳ�s�� FULL OUTER JOIN
                            dbo.�q�ʳ楼�I�ڪ��B ON dbo.�q�ʳ�.�q�ʳ�s�� = dbo.�q�ʳ楼�I�ڪ��B.�q�ʳ�s��
GROUP BY   dbo.�q�ʳ�.�q�ʳ�s��, dbo.�q�ʳ�.�g��, dbo.�q�ʤH.�m�W, dbo.�q�ʳ�.�q�ʤ��, dbo.�q�ʳ�.�q�ʪ��A, 
                            dbo.�q�ʳ�.�Ƶ�, dbo.�q�ʳ��`�p.�q���`�ƶq, dbo.�q�ʳ��`�p.�q���`���B, dbo.�q�ʳ�Ӷ�info.���a�s��, 
                            dbo.�q�ʳ�Ӷ�info.���W, dbo.�q�ʳ�Ӷ�info.�q��, dbo.�q�ʳ�Ӷ�info.�a�}, dbo.�q�ʳ�.�q�ʴ���, 
                            dbo.�q�ʳ�.�w�R��, dbo.�q�ʳ�~���ƶq.�q�ʫ~���ƶq, dbo.�q�ʳ�q�ʤH��.�q�ʤH��, 
                            dbo.�q�ʳ楼�I�ڪ��B.���I�ڪ��B
HAVING           (NOT (dbo.�q�ʳ�.�w�R�� IS NULL))


go
CREATE VIEW �q�ʳ�info�g�� as 
SELECT          dbo.�q�ʳ�.�q�ʳ�s��, dbo.�q�ʳ�.�g��, dbo.�q�ʤH.�m�W
FROM              dbo.�q�ʤH INNER JOIN
                            dbo.�q�ʳ� ON dbo.�q�ʤH.�q�ʤH�s�� = dbo.�q�ʳ�.�g�� where �q�ʳ�.�w�R��=0
go