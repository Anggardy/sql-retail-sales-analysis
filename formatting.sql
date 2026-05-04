-- Menggunakan database
use shop_db;

-- melihat tiap data
SELECT * FROM products;
SELECT * FROM orders ORDER BY delivery_date;
SELECT * FROM customers;
SELECT * FROM sales;

-- Perbaiki Data
ALTER TABLE customers
ADD PRIMARY KEY (customer_id);
ALTER TABLE customers 
	MODIFY COLUMN customer_name VARCHAR(50),
    MODIFY COLUMN city VARCHAR(50),
    MODIFY COLUMN state VARCHAR(50),
    MODIFY COLUMN gender VARCHAR(20),
    MODIFY COLUMN price float;

ALTER TABLE products ADD PRIMARY KEY (product_id);
Alter TABLE products RENAME COLUMN product_ID to product_id;
ALTER TABLE products 
	MODIFY COLUMN product_type VARCHAR(30),
    MODIFY COLUMN size VARCHAR(5),
    MODIFY COLUMN colour VARCHAR(10);


ALTER TABLE orders ADD PRIMARY KEY (order_id);
ALTER TABLE orders
	ADD CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
ALTER TABLE orders 
	MODIFY COLUMN order_date DATE,
    MODIFY COLUMN delivery_date DATE;


ALTER TABLE sales ADD PRIMARY KEY (sales_id);
ALTER TABLE sales
	ADD CONSTRAINT fk_sales_order FOREIGN KEY (order_id) REFERENCES orders(order_id),
	ADD CONSTRAINT fk_sales_product FOREIGN KEY (product_id) REFERENCES products(product_id);
Alter TABLE sales MODIFY column price_per_unit float;
Alter TABLE sales MODIFY column total_price float;

create view v_master_data as (
	Select 
		s.sales_id,
		o.order_id,
		
		c.customer_name,
		c.age,
		c.gender,
		c.city,
		c.state,
		
		p.product_name,
		p.product_type,
		p.size,
		p.colour,
		p.quantity as stok,
		p.price as harga_produk,

		s.price_per_unit as harga_jual,
		s.quantity,
		s.total_price,
		
		o.order_date,
		o.delivery_date,
		DATEDIFF(o.delivery_date, o.order_date) as delivery_time
		
	FROM sales s
	LEFT JOIN orders o ON o.order_id=s.order_id
	LEFT JOIN products p ON s.product_id=p.product_id
	LEFT JOIN customers c ON o.customer_id=c.customer_id
	WHERE DATEDIFF(o.delivery_date, o.order_date) > 0
);

SELECT count(sales_id) from v_master_data;
