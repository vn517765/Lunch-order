use　master;
go
drop DATABASE iii02_01;
go

CREATE DATABASE iii02_01;
GO

ALTER AUTHORIZATION ON DATABASE::[iii02_01] TO [sa]--增加SA使用者權限


use iii02_01;
/*
DROP TABLE 店家其他資訊;
DROP TABLE 店家評價;
DROP TABLE 菜單評價;
DROP TABLE 訂購人其他資訊;
DROP TABLE 訂購單細項;
DROP TABLE 退訂單細項;
DROP TABLE 收貨單細項;
DROP TABLE 取貨單細項;
DROP TABLE 評價單;
DROP TABLE 取貨單;
DROP TABLE 收貨單;
DROP TABLE 退訂單;
DROP TABLE 訂購單;
DROP TABLE 訂購人;
DROP TABLE 菜單;
DROP TABLE 店家;
*/




CREATE TABLE 店家(
店家編號 int IDENTITY(1,1)  PRIMARY KEY,
店名 varchar(20)  not null ,
電話 varchar(15)  not null ,
地址 varchar(50)   ,
已刪除 bit DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 店家其他資訊(
店家編號 int  not null ,
外送時間 int DEFAULT 0  ,
最晚訂購時間 varchar(30)   ,
外送最遠距離 int DEFAULT 0  ,
外送最低金額 int DEFAULT 0  ,
外送最低數量 int DEFAULT 1  ,
店家圖片 varchar(100)   ,
備註 varchar(50)   );
CREATE TABLE 店家評價(
店家編號 int  not null ,
店家評分 int DEFAULT 0  ,
累計訂購次數 int DEFAULT 0  ,
累計訂購金額 int DEFAULT 0  ,
累積訂購個數 int DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 菜單(
品名編號 int IDENTITY(1000,1)  PRIMARY KEY,
品名 varchar(50)  not null ,
單價 int  not null ,
店家編號 int  not null ,
供應限制 varchar(50)   ,
已刪除 bit DEFAULT 0  ,
菜色圖片 varchar(100)   ,
備註 varchar(50)   );
CREATE TABLE 菜單評價(
品名編號 int  not null ,
菜色評分 int DEFAULT 0  ,
累計訂購次數 int DEFAULT 0  ,
累積訂購個數 int DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 訂購人(
訂購人編號 int IDENTITY(5000,1)  PRIMARY KEY,
姓名 varchar(30)  not null ,
電話 varchar(15)  not null ,
身分別 varchar(10)  not null ,
上課地點 varchar(30)  not null ,
已刪除 bit DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 訂購人其他資訊(
訂購人編號 int  not null ,
信用度評分 int DEFAULT 0  ,
已未付款次數 int DEFAULT 0  ,
已未取貨次數 int DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 訂購單(
訂購單編號 int IDENTITY(10000,1)  PRIMARY KEY,
經辦 int  not null ,
訂購日期 date DEFAULT GETDATE()  ,
訂購狀態 varchar(10) DEFAULT '訂購中'  ,
訂購提交 bit DEFAULT 0  ,
已刪除 bit DEFAULT 0  ,
備註 varchar(50)   );

CREATE TABLE 訂購單細項(
訂購單編號 int  not null ,
訂購單細項編號 int IDENTITY(10000,1)  PRIMARY KEY,
訂購人 int  not null ,
品名編號 int  not null ,
訂購數量 int DEFAULT 0  ,
單價 int DEFAULT 0  ,
訂購時間 datetime DEFAULT GETDATE()  ,
細項付款確認 bit DEFAULT 0  ,
已刪除 bit DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 退訂單(
退訂單編號 int IDENTITY(10000,1)  PRIMARY KEY,
訂購單編號 int  not null ,
經辦 int  not null ,
退訂日期 date DEFAULT GETDATE()  ,
退訂原因 varchar(50)  not null ,
退款提交 bit DEFAULT 0  ,
退訂提交 bit DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 退訂單細項(
退訂單編號 int  not null ,
退訂單細項編號 int IDENTITY(10000,1)  PRIMARY KEY,
訂購單細項編號 int  not null ,
訂購人 int  not null ,
品名編號 int  not null ,
退訂數量 int DEFAULT 0  ,
單價 int  not null ,
退款金額小計 int DEFAULT 0  ,
細項退款確認 bit DEFAULT 0  ,
退款時間 datetime   ,
備註 varchar(50)   );
CREATE TABLE 收貨單(
收貨單編號 int IDENTITY(10000,1)  PRIMARY KEY,
訂購單編號 int  not null ,
經辦 int  not null ,
取貨日期 date DEFAULT GETDATE()  ,
收貨提交 bit DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 收貨單細項(
收貨單編號 int  not null ,
收貨單細項編號 int IDENTITY(10000,1)  PRIMARY KEY,
訂購單細項編號 int  not null ,
收貨人 int  not null ,
品名編號 int  not null ,
收貨數量 int DEFAULT 0  ,
收貨確認 bit DEFAULT 0  ,
收貨時間 datetime   ,
備註 varchar(50)   );
CREATE TABLE 取貨單(
取貨單編號 int IDENTITY(10000,1)  PRIMARY KEY,
收貨單編號 int  not null ,
經辦 int  not null ,
取貨日期 date DEFAULT GETDATE()  ,
取貨提交 bit DEFAULT 0  ,
備註 varchar(50)   );
CREATE TABLE 取貨單細項(
取貨單編號 int  not null ,
取貨單細項編號 int IDENTITY(10000,1)  PRIMARY KEY,
收貨單細項編號 int  not null ,
訂購人 int  not null ,
品名編號 int  not null ,
取貨數量 int DEFAULT 0  ,
細項取貨確認 bit DEFAULT 0  ,
取貨時間 datetime   ,
備註 varchar(50)   );
CREATE TABLE 評價單(
取貨單編號 int  not null ,
評價人 int  not null ,
品名編號 int  not null ,
訂購數量 int DEFAULT 0  ,
店家評分 int DEFAULT 0  ,
菜色評分 int DEFAULT 0  ,
評價日期 date DEFAULT GETDATE()  ,
評價結束確認 bit DEFAULT 0  ,
備註 varchar(50));

go

ALTER TABLE 店家其他資訊 ADD CONSTRAINT FK_店家其他資訊店家編號 FOREIGN KEY (店家編號) REFERENCES 店家(店家編號);
ALTER TABLE 店家評價 ADD CONSTRAINT FK_店家評價店家編號 FOREIGN KEY (店家編號) REFERENCES 店家(店家編號);
ALTER TABLE 菜單 ADD CONSTRAINT FK_菜單店家編號 FOREIGN KEY (店家編號) REFERENCES 店家(店家編號);
ALTER TABLE 菜單評價 ADD CONSTRAINT FK_菜單評價品名編號 FOREIGN KEY (品名編號) REFERENCES 菜單(品名編號);
ALTER TABLE 訂購人其他資訊 ADD CONSTRAINT FK_訂購人其他資訊訂購人編號 FOREIGN KEY (訂購人編號) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 訂購單 ADD CONSTRAINT FK_訂購單經辦 FOREIGN KEY (經辦) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 訂購單細項 ADD CONSTRAINT FK_訂購單細項訂購單編號 FOREIGN KEY (訂購單編號) REFERENCES 訂購單(訂購單編號);
ALTER TABLE 訂購單細項 ADD CONSTRAINT FK_訂購單細項訂購人 FOREIGN KEY (訂購人) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 訂購單細項 ADD CONSTRAINT FK_訂購單細項品名編號 FOREIGN KEY (品名編號) REFERENCES 菜單(品名編號);
ALTER TABLE 退訂單 ADD CONSTRAINT FK_退訂單訂購單編號 FOREIGN KEY (訂購單編號) REFERENCES 訂購單(訂購單編號);
ALTER TABLE 退訂單 ADD CONSTRAINT FK_退訂單經辦 FOREIGN KEY (經辦) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 退訂單細項 ADD CONSTRAINT FK_退訂單細項退訂單編號 FOREIGN KEY (退訂單編號) REFERENCES 退訂單(退訂單編號);
ALTER TABLE 退訂單細項 ADD CONSTRAINT FK_退訂單細項訂購單細項編號 FOREIGN KEY (訂購單細項編號) REFERENCES 訂購單細項(訂購單細項編號);
ALTER TABLE 退訂單細項 ADD CONSTRAINT FK_退訂單細項訂購人 FOREIGN KEY (訂購人) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 退訂單細項 ADD CONSTRAINT FK_退訂單細項品名編號 FOREIGN KEY (品名編號) REFERENCES 菜單(品名編號);
ALTER TABLE 收貨單 ADD CONSTRAINT FK_收貨單訂購單編號 FOREIGN KEY (訂購單編號) REFERENCES 訂購單(訂購單編號);
ALTER TABLE 收貨單 ADD CONSTRAINT FK_收貨單經辦 FOREIGN KEY (經辦) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 收貨單細項 ADD CONSTRAINT FK_收貨單細項收貨單編號 FOREIGN KEY (收貨單編號) REFERENCES 收貨單(收貨單編號);
ALTER TABLE 收貨單細項 ADD CONSTRAINT FK_收貨單細項訂購單細項編號 FOREIGN KEY (訂購單細項編號) REFERENCES 訂購單細項(訂購單細項編號);
ALTER TABLE 收貨單細項 ADD CONSTRAINT FK_收貨單細項收貨人 FOREIGN KEY (收貨人) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 收貨單細項 ADD CONSTRAINT FK_收貨單細項品名編號 FOREIGN KEY (品名編號) REFERENCES 菜單(品名編號);
ALTER TABLE 取貨單 ADD CONSTRAINT FK_取貨單收貨單編號 FOREIGN KEY (收貨單編號) REFERENCES 收貨單(收貨單編號);
ALTER TABLE 取貨單 ADD CONSTRAINT FK_取貨單經辦 FOREIGN KEY (經辦) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 取貨單細項 ADD CONSTRAINT FK_取貨單細項取貨單編號 FOREIGN KEY (取貨單編號) REFERENCES 取貨單(取貨單編號);
ALTER TABLE 取貨單細項 ADD CONSTRAINT FK_取貨單細項收貨單細項編號 FOREIGN KEY (收貨單細項編號) REFERENCES 收貨單細項(收貨單細項編號);
ALTER TABLE 取貨單細項 ADD CONSTRAINT FK_取貨單細項訂購人 FOREIGN KEY (訂購人) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 取貨單細項 ADD CONSTRAINT FK_取貨單細項品名編號 FOREIGN KEY (品名編號) REFERENCES 菜單(品名編號);
ALTER TABLE 評價單 ADD CONSTRAINT FK_評價單取貨單編號 FOREIGN KEY (取貨單編號) REFERENCES 取貨單(取貨單編號);
ALTER TABLE 評價單 ADD CONSTRAINT FK_評價單評價人 FOREIGN KEY (評價人) REFERENCES 訂購人(訂購人編號);
ALTER TABLE 評價單 ADD CONSTRAINT FK_評價單品名編號 FOREIGN KEY (品名編號) REFERENCES 菜單(品名編號);




INSERT INTO 店家 (店名,電話,地址) VALUES('正宗六合店','07-235-1968','800高雄市新興區六合一路57號');
INSERT INTO 店家 (店名,電話,地址) VALUES('米寶便當','(07)5588-123','高雄市左營區裕誠路169號');
INSERT INTO 店家 (店名,電話,地址) VALUES('劉江','07-2210779','高市新興區林森一路31號');
INSERT INTO 店家 (店名,電話,地址) VALUES('醉便宜','07-3964862','高雄市三民區延吉街25號');
INSERT INTO 店家 (店名,電話,地址) VALUES('佑佑鍋燒麵','07-7138822','高雄市苓雅區林泉街34號');
INSERT INTO 店家 (店名,電話,地址) VALUES('喜多屋','07-5577722','高雄市左營區自由二路新中街旁');
select * from 店家;

INSERT INTO 店家其他資訊 (店家編號,外送時間,最晚訂購時間,外送最遠距離,外送最低金額,外送最低數量,店家圖片) VALUES(1,'30','AM1000',20,200,4,'http://www.jengjong.tw/upload/location/20100428123442840.jpg');
INSERT INTO 店家其他資訊 (店家編號,外送時間,最晚訂購時間,外送最遠距離,外送最低金額,外送最低數量,店家圖片) VALUES(2,'60','AM0900',10,300,6,'http://www.mibo.com.tw/images/map-3.jpg');
INSERT INTO 店家其他資訊 (店家編號,外送時間,最晚訂購時間,外送最遠距離,外送最低金額,外送最低數量,店家圖片) VALUES(3,'40','AM0930',10,150,3,'http://www.liujiang-tw.com/photo/index-img.jpg');
INSERT INTO 店家其他資訊 (店家編號,外送時間,最晚訂購時間,外送最遠距離,外送最低金額,外送最低數量,店家圖片) VALUES(4,'60','AM1000',20,400,5,'https://www.walkerland.com.tw/image/poi/p14319/m61256/7a1bacfedbacdf1b391772d0bfb8f542fa0de506.jpg');
INSERT INTO 店家其他資訊 (店家編號,外送時間,最晚訂購時間,外送最遠距離,外送最低金額,外送最低數量,店家圖片) VALUES(5,'45','AM1100',15,300,4,'http://www.eoeo.com.tw/upload/312/201505121107312_2.png');
INSERT INTO 店家其他資訊 (店家編號,外送時間,最晚訂購時間,外送最遠距離,外送最低金額,外送最低數量,店家圖片) VALUES(6,'60','AM1000',15,500,1,'http://17d.com.tw/_pos/fascia/T12101612101413666/G.jpg');
select * from 店家其他資訊;

INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('三杯雞肉飯',75,1,'http://www.jengjong.tw/upload/food/20140311185355492.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('宮保雞丁飯',75,1,'http://www.jengjong.tw/upload/food/20140311185457669.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('糖醋小排飯',75,1,'http://www.jengjong.tw/upload/food/20140311185537529.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('紅豆養生便當',80,2,'http://www.mibo.com.tw/4/01.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('池上便當(招牌便當)',80,2,'http://www.mibo.com.tw/4/02.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('黃金排骨便當',80,2,'http://www.mibo.com.tw/4/03.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('滷雞腿飯 + 滷蛋',75,3,'');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('招牌炸 雞 腿 飯',75,3,'');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('炸 豬 排 飯',75,3,'');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('雞腿飯',110,4,'https://www.walkerland.com.tw/image/poi/p14319/m61256/6887ce169a8ca837810e189a940a959b40c439d3.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('排骨飯',100,4,'https://www.walkerland.com.tw/image/poi/p14319/m61256/6887ce169a8ca837810e189a940a959b40c439d3.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('牛肉飯',110,4,'https://www.walkerland.com.tw/image/poi/p14319/m61256/6887ce169a8ca837810e189a940a959b40c439d3.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('干貝蛋炒飯',90,5,'http://www.eoeo.com.tw/upload/002/201712041153002_2.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('櫻花蝦炒飯',90,5,'http://www.eoeo.com.tw/upload/222/201505181000222_2.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('鍋燒意麵',75,5,'http://www.eoeo.com.tw/upload/483/201505211610483_2.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('鍋燒湯',75,5,'http://www.eoeo.com.tw/upload/542/201505211619542_2.jpg');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('日式厚切豬排 蓋飯/炒烏龍/蛋包飯',70,6,'');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('咖哩大雞排 蓋飯/炒烏龍/蛋包飯',75,6,'');
INSERT INTO 菜單 (品名,單價,店家編號,菜色圖片) VALUES('韓式泡菜豬肉 蓋飯/炒烏龍/蛋包飯',70,6,'');
select * from 菜單;



INSERT INTO 訂購人 (姓名,電話,身分別,上課地點) VALUES('AAA','111111','學員','第一教室');
INSERT INTO 訂購人 (姓名,電話,身分別,上課地點) VALUES('BBB','2222222','學員','第二教室');
INSERT INTO 訂購人 (姓名,電話,身分別,上課地點) VALUES('CCC','33333333','學員','第三教室');
INSERT INTO 訂購人 (姓名,電話,身分別,上課地點) VALUES('DDD','44444444','學員','第四教室');
INSERT INTO 訂購人 (姓名,電話,身分別,上課地點) VALUES('EEE','5555555','學員','第五教室');
select * from 訂購人;

/*drop VIEW 店家ALL;*/
go
CREATE VIEW 店家ALL as 
SELECT	dbo.店家.*, dbo.店家其他資訊.外送時間, dbo.店家其他資訊.最晚訂購時間, dbo.店家其他資訊.外送最遠距離,dbo.店家其他資訊.外送最低金額, dbo.店家其他資訊.外送最低數量, dbo.店家其他資訊.店家圖片, dbo.店家其他資訊.備註 AS 其他備註, dbo.店家評價.店家評分, dbo.店家評價.累計訂購次數, dbo.店家評價.累計訂購金額, dbo.店家評價.累積訂購個數, dbo.店家評價.備註 AS 評分備註
FROM dbo.店家 INNER JOIN dbo.店家其他資訊 ON dbo.店家.店家編號 = dbo.店家其他資訊.店家編號 INNER JOIN dbo.店家評價 ON dbo.店家.店家編號 = dbo.店家評價.店家編號
go

/*update 店家ALL set 備註='111';*/
select * from 店家ALL;

go
CREATE VIEW 菜單ALL as 
SELECT	dbo.菜單.*, dbo.菜單評價.菜色評分, dbo.菜單評價.累計訂購次數, dbo.菜單評價.累積訂購個數, dbo.菜單評價.備註 AS 評價備註
FROM	dbo.菜單 INNER JOIN dbo.菜單評價 ON dbo.菜單.品名編號 = dbo.菜單評價.品名編號;
go

select * from 菜單ALL;

go
CREATE VIEW 訂購人ALL as 
SELECT	dbo.訂購人.*, dbo.訂購人其他資訊.信用度評分, dbo.訂購人其他資訊.已未付款次數,dbo.訂購人其他資訊.已未取貨次數, dbo.訂購人其他資訊.備註 AS 其他備註
FROM	dbo.訂購人 INNER JOIN dbo.訂購人其他資訊 ON dbo.訂購人.訂購人編號 = dbo.訂購人其他資訊.訂購人編號;
go
select * from 訂購人ALL;

go


go
CREATE VIEW 成員 as 
SELECT	* FROM	dbo.訂購人 where 已刪除=0;
go

CREATE VIEW 餐廳 as 
SELECT	* FROM	dbo.店家 where 已刪除=0;
go




CREATE VIEW 菜單info as 
SELECT          dbo.菜單.品名編號, dbo.菜單.品名, dbo.菜單.單價, dbo.菜單.店家編號, dbo.菜單.供應限制, dbo.菜單.已刪除, 
                            dbo.菜單.菜色圖片, dbo.菜單.備註, dbo.店家.店名, dbo.店家.電話, dbo.店家.地址, dbo.店家.已刪除 AS 店家已刪除, 
                            dbo.店家.備註 AS 店家備註
FROM              dbo.店家 INNER JOIN
                            dbo.菜單 ON dbo.店家.店家編號 = dbo.菜單.店家編號
go


CREATE VIEW 訂購單細項小計 as 
SELECT          訂購單編號, 訂購單細項編號, 單價, 訂購數量, 單價 * 訂購數量 AS 小計, 訂購人, 品名編號, 細項付款確認
FROM              dbo.訂購單細項
WHERE          (已刪除 = 0)
GROUP BY   訂購單編號, 訂購單細項編號, 單價, 訂購數量, 品名編號, 訂購人, 細項付款確認
go

CREATE VIEW 訂購單細項未付款 as 
SELECT          訂購單編號, 訂購單細項編號, 小計, 訂購人
FROM              dbo.訂購單細項小計
WHERE          (細項付款確認 = 0)
GROUP BY   訂購單編號, 訂購單細項編號, 小計, 訂購人
go

SELECT          訂購單編號, SUM(小計) AS 未付款金額
FROM              dbo.訂購單細項未付款
GROUP BY   訂購單編號

go

CREATE VIEW 訂購單未付款金額 as
SELECT          訂購單編號, SUM(小計) AS 未付款金額
FROM              dbo.訂購單細項未付款
GROUP BY   訂購單編號
go

CREATE VIEW 訂購單人別小計 as
SELECT          訂購單編號, 訂購人, SUM(訂購數量) AS 個人訂購數量, SUM(小計) AS 個人訂購金額
FROM              dbo.訂購單細項小計
GROUP BY   訂購單編號, 訂購人
go

CREATE VIEW 訂購單品項小計 as
SELECT          訂購單編號, 品名編號, SUM(訂購數量) AS 品項數量小計, SUM(小計) AS 品項金額小計
FROM              dbo.訂購單細項小計
GROUP BY   訂購單編號, 品名編號

go



CREATE VIEW 訂購單細項info as 
SELECT          dbo.訂購單細項.訂購單細項編號, dbo.訂購單細項.訂購單編號, dbo.訂購單細項.訂購人, dbo.訂購人.姓名, 
                            dbo.訂購單細項.品名編號, dbo.菜單.品名, dbo.訂購單細項.訂購數量, dbo.訂購單細項.單價, dbo.菜單.店家編號, 
                            dbo.店家.店名, dbo.店家.電話, dbo.店家.地址, dbo.訂購單細項.訂購時間, dbo.訂購單細項.細項付款確認, 
                            dbo.訂購單細項.備註, dbo.訂購單細項.已刪除, dbo.訂購單細項小計.小計, dbo.訂購單.訂購狀態, 
                            dbo.訂購單.訂購提交, dbo.訂購單.已刪除 AS 訂購單已刪除
FROM              dbo.訂購單細項 INNER JOIN
                            dbo.訂購人 ON dbo.訂購單細項.訂購人 = dbo.訂購人.訂購人編號 INNER JOIN
                            dbo.菜單 ON dbo.訂購單細項.品名編號 = dbo.菜單.品名編號 INNER JOIN
                            dbo.店家 ON dbo.菜單.店家編號 = dbo.店家.店家編號 INNER JOIN
                            dbo.訂購單 ON dbo.訂購單細項.訂購單編號 = dbo.訂購單.訂購單編號  FULL OUTER JOIN
                            dbo.訂購單細項小計 ON dbo.訂購單細項.訂購單細項編號 = dbo.訂購單細項小計.訂購單細項編號
GO

CREATE VIEW 訂購單訂購人數 as 
SELECT          訂購單編號, COUNT(訂購人) AS 訂購人數
FROM              dbo.訂購單人別小計
GROUP BY   訂購單編號
GO

CREATE VIEW 訂購單品項數量 as 
SELECT          訂購單編號, COUNT(品名編號) AS 訂購品項數量
FROM              dbo.訂購單品項小計
GROUP BY   訂購單編號
GO

GO
CREATE VIEW 訂購單總計 as 
SELECT          訂購單編號, SUM(品項數量小計) AS 訂購總數量, SUM(品項金額小計) AS 訂購總金額
FROM              dbo.訂購單品項小計
GROUP BY   訂購單編號
GO

go
CREATE VIEW 訂購單info as 
SELECT DISTINCT 
                            dbo.訂購單.訂購單編號, dbo.訂購單.經辦 AS 經辦ID, dbo.訂購人.姓名 AS 經辦姓名, dbo.訂購單.訂購日期, 
                            dbo.訂購單.訂購狀態, dbo.訂購單.訂購提交, dbo.訂購單.已刪除, dbo.訂購單.備註, dbo.訂購單總計.訂購總數量, 
                            dbo.訂購單總計.訂購總金額, dbo.訂購單細項info.店家編號, dbo.訂購單細項info.店名, dbo.訂購單細項info.電話, 
                            dbo.訂購單細項info.地址, dbo.訂購單品項數量.訂購品項數量, dbo.訂購單訂購人數.訂購人數, 
                            dbo.訂購單未付款金額.未付款金額
FROM              dbo.訂購單 INNER JOIN
                            dbo.訂購人 ON dbo.訂購單.經辦 = dbo.訂購人.訂購人編號 FULL OUTER JOIN
                            dbo.訂購單總計 ON dbo.訂購單.訂購單編號 = dbo.訂購單總計.訂購單編號 INNER JOIN
                            dbo.訂購單人別小計 ON dbo.訂購單.訂購單編號 = dbo.訂購單人別小計.訂購單編號 FULL OUTER JOIN
                            dbo.訂購單品項小計 ON dbo.訂購單.訂購單編號 = dbo.訂購單品項小計.訂購單編號 FULL OUTER JOIN
                            dbo.訂購單細項info ON dbo.訂購單.訂購單編號 = dbo.訂購單細項info.訂購單編號 FULL OUTER JOIN
                            dbo.訂購單品項數量 ON dbo.訂購單.訂購單編號 = dbo.訂購單品項數量.訂購單編號 FULL OUTER JOIN
                            dbo.訂購單訂購人數 ON dbo.訂購單.訂購單編號 = dbo.訂購單訂購人數.訂購單編號 FULL OUTER JOIN
                            dbo.訂購單未付款金額 ON dbo.訂購單.訂購單編號 = dbo.訂購單未付款金額.訂購單編號
GROUP BY   dbo.訂購單.訂購單編號, dbo.訂購單.經辦, dbo.訂購人.姓名, dbo.訂購單.訂購日期, dbo.訂購單.訂購狀態, 
                            dbo.訂購單.備註, dbo.訂購單總計.訂購總數量, dbo.訂購單總計.訂購總金額, dbo.訂購單細項info.店家編號, 
                            dbo.訂購單細項info.店名, dbo.訂購單細項info.電話, dbo.訂購單細項info.地址, dbo.訂購單.訂購提交, 
                            dbo.訂購單.已刪除, dbo.訂購單品項數量.訂購品項數量, dbo.訂購單訂購人數.訂購人數, 
                            dbo.訂購單未付款金額.未付款金額
HAVING           (NOT (dbo.訂購單.已刪除 IS NULL))


go
CREATE VIEW 訂購單info經辦 as 
SELECT          dbo.訂購單.訂購單編號, dbo.訂購單.經辦, dbo.訂購人.姓名
FROM              dbo.訂購人 INNER JOIN
                            dbo.訂購單 ON dbo.訂購人.訂購人編號 = dbo.訂購單.經辦 where 訂購單.已刪除=0
go