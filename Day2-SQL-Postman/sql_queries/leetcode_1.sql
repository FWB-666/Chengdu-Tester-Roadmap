INSERT INTO `user-day2` (id,name,age,city) VALUES
(1,'张敏',25,'成都'),
(2,'李民',23,'重庆'),
(3,'萨湖',40,'上海'),
(4,'吴吉',15,'北京'),
(5,'艾夫',26,'上海'),
(6,'法正',35,'成都');
-- 插入数据


SELECT * FROM `user-day2`;
-- 查询表


SELECT * FROM `user-day2` WHERE city = '成都';
-- 查询居住地为成都的人


SELECT city,AVG(age) AS avg_age
FROM `user-day2`
GROUP BY city;
-- 计算各个城市人的平均年龄


SELECT name FROM `user-day2`
WHERE age > 25 AND city != '成都';
-- 查询年龄大于25并且居住地为成都的人




