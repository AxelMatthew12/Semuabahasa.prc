-- Active: 1714363170761@@127.0.0.1@3306@db_polinema
use db_polinema;
CREATE table mahasisa (nim int(8) PRIMARY KEY, nama_mhs CHAR(50), jenis_kelamin ENUM('L', 'P')DEFAULT 'L', alamat VARCHAR(50), kota VARCHAR(20) DEFAULT 'malang', asal_sma CHAR(30), no_hp VARCHAR(12), umur INTEGER, kode_prodi CHAR(6), FOREIGN KEY fk0(kode_prodi) REFERENCES prodi(kode_prodi));
SHOW TABLES;
CREATE Table mata_kuliah (mk_id char(10) PRIMARY KEY, nama_mk char(50), jumlah_jam FLOAT(4,2), sks INTEGER);
create table ruang (ruang_id CHAR(3) PRIMARY KEY, nama_ruang CHAR(20), kapasitas INTEGER);
CREATE table dosen (nidn INTEGER(20) PRIMARY KEY, nama_dosen CHAR(50), status enum ('PNS', 'KONTRAK') DEFAULT 'PNS', jenis_kelamin enum ('L','P') DEFAULT 'L', no_hp VARCHAR(15));
ALTER TABLE mahasisa ADD COLUMN agama VARCHAR(10);
DESCRIBE dosen;
ALTER TABLE dosen ADD COLUMN alamat VARCHAR(50);
INSERT INTO mahasisa (nim, nama_mhs, jenis_kelamin, alamat, kota, asal_sma, no_hp, umur, kode_prodi, agama)
VALUES
(10101010, 'John Doe', 'L', 'Jl. Merdeka No. 123', 'Bandung', 'SMA Negeri 1 Bandung', '081234567890', 21, 'TIK', 'Islam'),
(20202020, 'Jane Smith', 'P', 'Jl. Cendana No. 45', 'Surabaya', 'SMA Kristen Surabaya', '087654321098', 20, 'MI', 'Kristen'),
(30303030, 'Michael Johnson', 'L', 'Jl. Diponegoro No. 78', 'Yogyakarta', 'SMA Budi Utama YK', '089876543210', 22, 'TKJ', 'Protestan'),
(40404040, 'Lisa Wong', 'P', 'Jl. Wahid Hasyim No. 56', 'Semarang', 'SMA Citra Semarang', '085432109876', 21, 'RPL', 'Katolik'),
(50505050, 'Ahmad Abdullah', 'L', 'Jl. Ahmad Yani No. 34', 'Malang', 'SMA Kartika Malang', '081234567890', 20, 'TIK', 'Islam'),
(60606060, 'Siti Nurhaliza', 'P', 'Jl. Pahlawan No. 67', 'Jakarta', 'SMA Pembangunan Jaya', '089876543210', 22, 'MI', 'Islam');

DESCRIBE prodi;
INSERT INTO prodi (kode_prodi, nama_prodi)
VALUES
('TIK', 'Teknik Informatika'),
('MI', 'Manajemen Informatika'),
('TKJ', 'Teknik Komputer dan Jaringan'),
('RPL', 'Rekayasa Perangkat Lunak'),
('SIS', 'Sistem Informasi'),
('TIF', 'Teknik Informatika'),
('DKV', 'Desain Komunikasi Visual');
DESCRIBE mahasisa;
SELECT * FROM mahasisa;
ALTER TABLE mahasisa DROP COLUMN asal_sma;
