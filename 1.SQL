#客户端连接服务器端使用的编码为UTF8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS xz;
#创建一个新的数据库,建数据库使用的编码
CREATE DATABASE xz CHARSET=UTF8;
#进入数据库
USE xz;
#创建保存数据的表
CREATE TABLE family(
fid INT PRIMARY KEY,
fname VARCHAR(8)
);
#插入数据
INSERT INTO family VALUES(10,'联想');
INSERT INTO family VALUES(20,'戴尔');
INSERT INTO family VALUES(30,'小米');
INSERT INTO family VALUES(40,'华为');
INSERT INTO family VALUES(50,'苹果');
#创建保存数据的表
CREATE TABLE laptop(
lid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(32),
price DECIMAL(7,2),
spec VARCHAR(32),
detail VARCHAR(36),
shelfTime DATETIME,
isOnsale BOOL,
familyId INT,
FOREIGN KEY(familyId) REFERENCES family(fid)
);
#插入数据
INSERT INTO laptop(title,price,spec,detail,shelfTime,isOnsale,familyId)VALUES('Air0系列',6988,'双核i5/8GB内存/128GB闪存','详情1','2020-4-30 18:33:00',TRUE,10);
INSERT INTO laptop(title,price,spec,detail,shelfTime,isOnsale,familyId)VALUES('联想E480C 轻薄系列',5399,'双核i5/8GB内存/128GB闪存','详情2','2020-4-30 18:33:00',FALSE,20);
INSERT INTO laptop(title,price,spec,detail,shelfTime,isOnsale,familyId)VALUES('华硕RX310 金属超极本',4966,'双核i5/8GB内存/128GB闪存','详情3','2020-4-30 18:33:00',TRUE,30);
INSERT INTO laptop(title,price,spec,detail,shelfTime,isOnsale,familyId)VALUES('联想小新700 电竞版游戏本',6299,'双核i5/8GB内存/128GB闪存','详情4','2020-4-30 18:33:00',FALSE,40);
INSERT INTO laptop(title,price,spec,detail,shelfTime,isOnsale,familyId)VALUES('戴尔灵越燃7000 轻薄窄边',5199,'双核i5/8GB内存/128GB闪存','详情5','2020-4-30 18:33:00',TRUE,50);