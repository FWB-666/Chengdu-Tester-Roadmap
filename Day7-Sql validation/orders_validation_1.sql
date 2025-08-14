CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  user_id INT,
  product VARCHAR(50),
  status VARCHAR(20),
  amount DECIMAL(10,2),
  create_time DATETIME
);

INSERT INTO orders VALUES
(1001, 1, '张飞牛肉', '已支付', 98.50, '2025-08-10'),
(1002, 2, '郫县豆瓣', '待发货', 32.00, '2025-08-11'),
(1003, 1, '火锅底料', '已取消', 45.80, '2025-08-09'),
(1004, 3, '蜀绣工艺品', '已发货', 220.00, '2025-08-10'),
(1005, 2, '四川腊肉', '已支付', 78.90, '2025-08-11');

SELECT * FROM orders 
WHERE status='已支付' 
AND create_time < DATE_SUB(NOW(), INTERVAL 24 HOUR);

SELECT * FROM orders 
WHERE status NOT IN ('已支付','待发货','已发货','已取消');

SELECT * FROM orders WHERE amount < 0;

SELECT order_id, COUNT(*) 
FROM orders 
GROUP BY order_id HAVING COUNT(*) > 1;

SELECT product, status, COUNT(*) 
FROM orders
WHERE product IN ('张飞牛肉','郫县豆瓣','火锅底料')
GROUP BY product, status;

SELECT *, TIMEDIFF(NOW(), create_time) AS time_diff 
FROM orders 
WHERE status='待发货'
HAVING time_diff > '24:00:00';

UPDATE orders SET amount=0 WHERE order_id=1001;

SELECT * FROM orders WHERE order_id=1001 OR 1=1;

