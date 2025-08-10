# 🚀 Day2：SQL条件查询与Postman登录接口测试 | 成都测试岗学习日记
> **求职目标**：功能测试工程师（成都 · 期望8K+）  
> **技术栈**：`SQL` `Postman` `接口测试` `安全测试`
>  **今日进度**：3/3 ✅ 
## 一、SQL练习环境搭建
为保护Day1的`user`表原始数据，新建练习专用表：
插入练习数据INSERT INTO `user-day2` VALUES 
1. 查询成都用户  
   SELECT * FROM `user-day2` WHERE city='成都';  
2. 统计各城市用户平均年龄
   SELECT city, AVG(age) AS avg_age 
   FROM `user-day2` 
   GROUP BY city;
3. 查找年龄大于 25 的非成都用户  
   SELECT name FROM `user-day2` 
   WHERE age > 25 AND city != '成都';

## 二、Postman登录接口测试

| 任务 | 完成证明 |
|------|----------|
| 正常结果 | ![功能测试](postman_collection/screenshots/测试结果详情.png)
|异常结果 | ![异常测试](postman_collection/screenshots/错误响应界面.png)



## 三、明日计划
1. 用XMind设计图书管理系统登录功能的20+测试用例，覆盖三个维度

