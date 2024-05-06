-- Active: 1714363170761@@127.0.0.1@3306@sistemakademik
CREATE TABLE mahasiswa(
    No_mhs VARCHAR(10) PRIMARY KEY,
    Nama_mhs VARCHAR(50) NOT NULL,
    Jurusan VARCHAR(2) NOT NULL
);

INSERT INTO mahasiswa (No_mhs, Nama_mhs, Jurusan) VALUES
('1921001', 'Aminah', 'MI'),
('1921002', 'Budiman', 'MI'),
('1921003', 'Carina', 'TI'),
('1921004', 'Firda', 'TI');

SELECT * FROM mahasiswa;

CREATE TABLE Mata_kuliah (
    Kd_Mk VARCHAR(5) PRIMARY KEY,
    Nama_MK VARCHAR(50) NOT NULL,
    Kode_Dosen VARCHAR(5) NOT NULL,
    FOREIGN KEY(Kode_Dosen) REFERENCES Dosen(Kd_Dosen)
);

INSERT INTO Mata_Kuliah (Kd_MK, Nama_MK, Kode_Dosen) VALUES
('MI350', 'Basis Data', 'B104'),
('MI465', 'Pemrograman', 'B105'),
('TI201', 'Mobile', 'C102');

CREATE TABLE Dosen (
    Kd_Dosen VARCHAR(5) PRIMARY KEY,
    Nama_Dosen VARCHAR(50) NOT NULL
);

INSERT INTO Dosen (Kd_Dosen, Nama_Dosen)VALUES
('B104', 'Ati'),
  ('B105', 'Dita'),
  ('C102', 'Leo');

CREATE TABLE Nilai (
    No_Mhs VARCHAR(10) NOT NULL,
    Kode_MK VARCHAR(5) NOT NULL,
    Nilai INT NOT NULL,
    FOREIGN KEY (No_mhs) REFERENCES mahasiswa(No_mhs),
    FOREIGN KEY (Kode_MK) REFERENCES Mata_Kuliah(Kd_MK),
    PRIMARY KEY (No_Mhs, Kode_MK)
);

INSERT INTO Nilai (No_Mhs, Kode_MK, Nilai) VALUES
  ('1921001', 'MI350', 85),
  ('1921001', 'MI465', 87),
  ('1921002', 'MI465', 85),
  ('1921003', 'TI201', 78),
  ('1921004', 'TI201', 80);

SELECT * FROM mahasiswa;