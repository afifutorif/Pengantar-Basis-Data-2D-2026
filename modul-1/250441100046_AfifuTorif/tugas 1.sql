SHOW DATABASES;

USE koleksi_langka;

CREATE DATABASE koleksi_langka;

CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2)
);

SELECT * FROM koleksi_langka;

SHOW TABLES;