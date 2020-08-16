SET NAMES UTF8;
DROP DATABASE IF EXISTS xz;
CREATE DATABASE xz CHARSET=UTF8;
USE xz;
CREATE TABLE family(
  fid      INT PRIMARY KEY,
  fname    VARCHAR(10)
);
INSERT INTO family VALUES (10,'联想');
INSERT INTO family VALUES (20,'戴尔');
INSERT INTO family VALUES (30,'小米');
CREATE TABLE laptop(
 lid           INT PRIMARY KEY,
 title         VARCHAR(25) UNIQUE,
 price     DECIMAL(7,2) NOT NULL DEFAULT 5889,
 spec          VARCHAR(40),
 detail        VARCHAR(5000),
 shelftime     DATE,
 isonsale      BOOL,
 familyid      INT
);
INSERT INTO laptop VALUES
  (10,'联想pro',8999,'流畅',
  '详情一','2020/01/20',1,30);
INSERT INTO laptop VALUES
  (20,'戴尔air',5689.99,'高端版','详情二','2020/05/10',0,20);
INSERT INTO laptop VALUES
  (30,'小米p3000',10000,'轻薄款','详情三','2020/3/28',1,10);
INSERT INTO laptop VALUES
  (40,NULL,10000,'测试款','详情四','2020/6/01',0,50);
INSERT INTO laptop VALUES
  (50,'华为p897',DEFAULT,'开发版','详情五','DEFAULT',1,60);