# 📊 Retail Sales PerformanceL End-to-End SQL Analysis

## 📌 Project Overview
Proyek ini bertujuan untuk melakukan analisis performa penjualan toko retail pakaian menggunakan SQL.
Data mencakup informasi pelanggan, pesanan, produk, dan rincian penjualan.

## 🗄️ Dataset
Dataset yang digunakan terdiri dari 4 file CSV:
- `customer.csv` : Data demografi pelanggan.
- `order.csv`:  Data mengenai pesanan pelanggan, termasuk pemesanan dan pengiriman.
- `products.csv`: Data mengenai detail produk
- `sales.csv`: Rincian transaksi per produk.

## 🛠️ Tech Stack & Skills
- **Tools**: SQL (MySQL)
- **Concepts**: View, Join, Agregation Function, Data Cleaning (Formatting data), Business Intelligence.

## ❓Masalah
Owner merasa bisnis yang ada berjalan dengan cukup baik, namun owner ingin mengetahui kelemahan dan keunggulan dari bisnisnya untuk membantu merencanakan stok dan strategi marketing tahun depan. Hal yang ingin diketahui owner antara lain:
- **Performa penjualan**: Melihat produk dan kategori yang memiliki total penjualan dan total pendapatan yang baik.
- **Sebaran Pelanggan Loyal**: Melihat sebaran pelanggan berdasarkan negara bagian yang paling sering melakukan belanja
- **Performa Pengiriman** : Melihat berapa lama waktu pengiriman di tiap negara bagian.

## 🚀 Insight
### **Performa Penjualan**
Berdasarkan analisis produk yang memiliki jumlah penjualan terbanyak adalah Denim dengan total barang terjual sebesar **527 Pcs**. Hal ini sejalan dengan pendapatan keseluruhan yang mencapai **52.399 AUD** dengan rata-rata harga produk senilai **99.36 AUD**.

### **Demographics**
Pelanggan terbanyak berdasarkan wilayah negara bagian adalah South Australia yang menghasilkan pendapatan total sebesar 147.816 AUD, disusul dengan Queensland sebesar 142.062 dan New South Wales sebesar 131.744 AUD.

### **Logistics**
Waktu pengiriman rata-rata yang dibutuhkan di tiap wilayah adalah 14 hari, dengan waktu tercepat terdapat di Northen Territory dan terlama ada di wilayah Queensland.

## 💬 Saran & Rekomendasi
1. Berdasarkan analisis dapat dilihat bahwa Denim adalah produk yang memiliki tingkat penjualan tertinggi. Owner harus memastikan bahwa produk Denim harus selalu tersedia.
2. Data demografi menunjukkan bahwa wilayah yang paling sering berbelanja adalah South Australia, namun wilayah ini juga termasuk wilayah dengan tingkat pengiriman terlama (+14 hari). Hal tersebut harus menjadi perhatian serius, jangan sampai karena terlalu lama owner bisa kehilangan pasarnya do wilayah tersebut.

## 📄 Cara Menggunakan
1. Dalam prosesnya, analisi ini menggunakan MySQL Workbench
2. Import data menggunakan Import Table Wizard untuk masing-masing data.
3. Analisis tiap periksa data dan teliti bahwa ada beberapa kolom yang memiliki tipe data kurang baik.
4. Jalankan `Formatting.sql` kemudian `explore.sql`
