#设置储存编码为utf8，
SET NAMES  UTF8;
#丢弃数据库，如果存在xz
DROP DATABASE IF EXISTS xz;
#创建一个新的数据库xz
CREATE DATABASE xz CHARSET=UTF8;
#进入数据库xz
USE xz;
#创建保存笔记分类数据表family
CREATE TABLE family(
  Fid INT PRIMARY KEY,  
  FNAME VARCHAR(8)
  );
  #插入数据
INSERT INTO family VALUES(10,'联想');
INSERT INTO family VALUES(20,'戴尔');
INSERT INTO family VALUES(30,'小米');
#创建保存笔记本数据的表laptop
CREATE TABLE laptop(
  lid  INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(20) UNIQUE NOT NULL,
  price  DECIMAL(6,2) NOT NULL default 3199,
  spec   VARCHAR(20) default'web开发版',
  detail  VARCHAR(39),
  shelfTime DATETIME,
  isONsale  BOOL,  #0-是  1-不是
  familyId INT,
   FOREIGN  KEY(familyId) REFERENCES family(fid) 
  );
  #插入数据
  INSERT INTO laptop VALUES
  (1,'Air0系列',6988,'双核i5/8GB内存/128GB闪存','详情1','2020-4-30 18:33:00',TRUE,30);
  INSERT INTO laptop VALUES
  (2,'联想E480C 轻薄系列',5399,'双核i5/8GB内存/128GB闪存','详情2','2020-4-28 18:33:00',FALSE,10);
  INSERT INTO laptop VALUES
  (3,'戴尔灵越燃7000 轻薄窄边',5199,'双核i5/8GB内存/128GB闪存','详情5','2020-4-22 18:33:00',TRUE,20);
  INSERT INTO laptop VALUES
  (4,'戴尔灵越L',5199,'双核i5/8GB内存/128GB闪存','详情5','2020-4-22 18:33:00',TRUE,20);
  INSERT INTO laptop VALUES
  (5,'4894949',default,'双核i5/8GB内存/128GB闪存','详情5','2020-4-22 18:33:00',TRUE,20);
  INSERT INTO laptop(lid,title) VALUES(6,'外星人');
  INSERT INTO laptop VALUES
  (NULL,'戴3尔灵越L',5199,'双核i5/8GB内存/12800GB闪存','详情6','2020-4-22 18:33:00',TRUE,20);
 