## 一、SQL练习环境搭建
为保护Day1的`user`表原始数据，新建**练习专用表**：
sql
复制表结构
CREATE TABLE user_exercise LIKE user;

插入测试数据
INSERT INTO user_exercise (id, first_name, city) 
VALUES (1,'张明','成都');

## 二、Postman登录接口测试
使用备用接口 `https://postman-echo.com/post` 完成以下验证：

测试覆盖范围
           | 验证点 | 结果 |
|----------|--------|------|
| 功能测试 | 请求数据正确返回 | ✅ | 
| 异常测试 | 错误凭证处理 | ✅ |
| 安全测试 | HTTPS加密传输 | ✅ |
| 性能测试 | 响应时间<1000ms | ✅ (平均623ms) |

测试证据
![正常测试](../postman_collection/screenshots/normal_test_pass.png)
![异常测试](../postman_collection/screenshots/error_test_400.png)
## 三、明日计划
Selennium Web自动化环境搭建
