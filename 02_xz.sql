#设置储存编码为utf8，
set names utf8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS xz;
#创建一个新的数据库
CREATE DATABASE xz CHARSET=UTF8;
#进入数据库xz
USE xz;
#创建保存新闻数据表数据表laptop
CREATE TABLE laptop(
  lid  INT,   #PRIMARY KEY  主键约束只能在某一列进行且一个表只能单独存在，通常加在编号上查询时会按照编号从小到大进行查询。
  title VARCHAR(64),
  price  DECIMAL(6,2),
  stockCount   SMALLINT,
  shelfTime  DATETIME,
  isLndex  BOOL  #0-是  1-不是
);
#插入数据
INSERT INTO laptop VALUES('1','雷神恶魔果实大甩卖，只许￥:8999.99','8999.99','1','2020-03-04 08:40:22','0');
INSERT INTO laptop VALUES('2','手机','320.88','66666','2020-04-04 12:40:22','1');
INSERT INTO laptop VALUES('3','小仙女','9999.99','1','2020-04-04 12:40:22','1');
