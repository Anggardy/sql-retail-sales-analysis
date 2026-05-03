use shop_db;
Select * FROM customers;
Select * FROM orders;
Select * FROM products;
Select * FROM sales;

-- Menampilkan data dengan revenue terbanyak.
SELECT 
	product_name,
    sum(total_price) as total_revenue_product
FROM v_master_data
GROUP BY product_name
ORDER BY total_revenue_product DESC
LIMIT 5;

-- Performa penjualan per kategori
Select 
	product_type,
    sum(total_price) as total_revenue,
    sum(quantity) as total_penjualan,
    round(avg(harga_jual), 2) as rata_rata_hj
from v_master_data
Group by product_type
Order  by total_penjualan desc;

-- Pelanggan paling loyal berdasarkan state
SELECT 
	state,
    sum(v.total_price) as total_revenue
FROM v_master_data v
GROUP BY state
ORDER BY total_revenue DESC;

-- Rata-rata pengiriman
Select 
	product_type,
    round(avg(delivery_time), 2) as rata_rata_pengiriman
from v_master_data
Group by product_type
Order  by rata_rata_pengiriman desc;