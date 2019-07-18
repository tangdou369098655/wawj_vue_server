SET NAMES UTF8;
DROP DATABASE IF EXISTS wawj;
CREATE DATABASE wawj CHARSET=UTF8;

USE wawj;
CREATE TABLE wawj_title(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  uEnglish VARCHAR(50)
);
INSERT INTO wawj_title VALUES(null,'关于我们','about');
INSERT INTO wawj_title VALUES(null,'产品展示','product');
INSERT INTO wawj_title VALUES(null,'新闻动态','news');
INSERT INTO wawj_title VALUES(null,'联系我们','contact us');

CREATE TABLE wawj_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(25),
  detail VARCHAR(50)
);
INSERT INTO wawj_product VALUES(null,"22.jpg",'拉丝小台灯');
INSERT INTO wawj_product VALUES(null,"28.jpg",'银色金属圆桌');
INSERT INTO wawj_product VALUES(null,"24.jpg",'深灰木纹台灯');
INSERT INTO wawj_product VALUES(null,"16.jpg",'居家立式台灯');
INSERT INTO wawj_product VALUES(null,"27.jpg",'原木小板凳');
INSERT INTO wawj_product VALUES(null,"25.jpg",'黑色置物架');
INSERT INTO wawj_product VALUES(null,"21.jpg",'金色小台灯');
INSERT INTO wawj_product VALUES(null,"26.jpg",'弧形圆凳');