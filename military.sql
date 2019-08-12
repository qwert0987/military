SET NAMES UTF8;
DROP DATABASE IF EXISTS military;
CREATE DATABASE military CHARSET=UTF8;
USE military;

--用户信息表
CREATE TABLE military_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),#用户姓名
  id_number VARCHAR(64),#身份证号码
  upwd VARCHAR(32), #密码
  email VARCHAR(32),#邮箱
  phone VARCHAR(64),#手机号码
  avatar VARCHAR(128),#头像图片路径
  gender INT #性别  0-女  1-男
);

-- 评论详情表
CREATE TABLE military_comment(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  val VARCHAR(128)
);

-- 图片路径表
CREATE TABLE military_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128)
);

-- /****首页轮播图****/
CREATE TABLE  militart_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img_carousel VARCHAR(128),#轮播图路径
  title VARCHAR(64),
  href VARCHAR(128)
);

-- 
-- 
-- 数据导入。。。。
-- 
-- 

-- 用户信息添加一条测试数据
INSERT INTO military_user VALUES(null,"mike","440921199601181213","123456","diaodiao@163.com","13800138000",null,"1");
