CREATE DATABASE db_pelanggan;

CREATE TABLE pelanggan_setia (
    nomor_identitas INT
);

USE db_pelanggan;

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);

SHOW TABLES;
