# 🚀 Day1：环境搭建与接口初探 | 成都测试岗学习日记

> **求职目标**：测试工程师（成都 · 期望8K+）  
> **今日进度**：4/4 ✅  
> **技术栈**：`Postman` `MySQL` `API测试`  

## 一、今日成果
| 任务 | 完成证明 |
|------|----------|
| Postman 安装 | ![请求截图](Chengdu-Tester-Roadmap/Day1-Environment/Day1-Environment/screenshots/postman_api.jpg/) |
| MySQL 8 部署 | ![版本验证](Day1-Environment/screenshots/mysql_version.png) |
| 用户表创建 | ![表结构](Day1-Environment/screenshots/user_table.png) |

## 二、操作代码
``sql
-- 创建 user 表（在Navicat执行）
CREATE TABLE `user` (
  `id` INT PRIMARY KEY,
  `first_name` VARCHAR(20)
);

-- 插入测试数据
INSERT INTO `practice_db`.`user` (`id`, `email`, `first_name`, `last_name`, `avatar`) VALUES (1, 'fwb@test.com', 'wb', 'f', 'http://example.com/your-photo.jpg');

## 三、遇到的问题
### 表名错误报错 1146
**错误SQL**：`SELECT * FROM users`  
**原因**：实际表名为 `user`  
**修复**：  
```sql
SELECT * FROM `user`;  -- 正确写法
```

## 四、明日计划
1. 学习 SELECT 条件查询  
2. 用 Postman 测试登录接口
