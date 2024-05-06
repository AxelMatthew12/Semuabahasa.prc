-- Active: 1714363170761@@127.0.0.1@3306@pegawai
CREATE TABLE Pegawai (
    Nopegawai VARCHAR(5) PRIMARY KEY,
    NamaPegawai VARCHAR(50) NOT NULL
);

CREATE TABLE Golongan(
    Golongan VARCHAR(1) PRIMARY KEY,
    BesarGaji DECIMAL(10,2) NOT NULL
);

CREATE TABLE Proyek (
    Noproyek VARCHAR(5) PRIMARY KEY,
    Namaproyek VARCHAR(50) NOT NULL
);

CREATE TABLE Proyekpegawai (
    Noproyek VARCHAR(5) NOT NULL,
    NoPegawai VARCHAR(5) NOT NULL,
    PRIMARY KEY (Noproyek, NoPegawai),
    FOREIGN KEY (NoProyek) REFERENCES Proyek(Noproyek),
    FOREIGN KEY (NoPegawai) REFERENCES Pegawai(Nopegawai)
);

DROP TABLE Proyekpegawai;
INSERT INTO Pegawai (Nopegawai, NamaPegawai) VALUES
  ('NP001', 'Anton A'),
  ('NP011', 'Paula B'),
  ('NP021', 'Koko C'),
  ('NP002', 'Anton A'),
  ('NP012', 'Sita B'),
  ('NP022', 'Yusni B'),
  ('NP003', 'Paula B'),
  ('NP013', 'Daniar C'),
  ('NP023', 'Lubis C'),
  ('NP004', 'Keni B'),
  ('NP014', 'Sofi B'),
  ('NP024', 'Yuni C'),
  ('NP005', 'Udin D'),
  ('NP015', 'Didit D'),
  ('NP025', 'Dani D');


INSERT INTO Golongan (Golongan, BesarGaji) VALUES
  ('A', 1000000),
  ('B', 900000),
  ('C', 750000),
  ('D', 500000);


INSERT INTO Proyek (Noproyek, NamaProyek) VALUES
  ('BRR', 'Badan Rehabilitasi dan Rekonstruksi'),
  ('PEMDA', 'Pemerintah Daerah'),
  ('CBR', 'Calon Bintara'),
  ('ASK', 'Angkatan Surakarta'),
  ('OB', 'Ofiice Boy');

  DELETE FROM Proyek;


INSERT INTO Proyekpegawai (NoProyek, NoPegawai) VALUES
  ('BRR', 'NP001'),
  ('BRR', 'NP011'),
  ('BRR', 'NP021'),
  ('PEMDA', 'NP002'),
  ('PEMDA', 'NP012'),
  ('PEMDA', 'NP022'),
  ('CBR', 'NP003'),
  ('CBR', 'NP013'),
  ('CBR', 'NP023'),
  ('ASK', 'NP004'),
  ('ASK', 'NP014'),
  ('ASK', 'NP024'),
  ('OB', 'NP005'),
  ('OB', 'NP015'),
  ('OB', 'NP025');

  
  DELETE FROM Pegawai;

    SELECT * FROM Proyekpegawai; 

