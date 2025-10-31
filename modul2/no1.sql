DROP DATABASE IF EXISTS 5053251017_bandara_db;
CREATE DATABASE 5053251017_bandara_db;

USE 5053251017_bandara_db;

CREATE TABLE Bandara (
	ID INT NOT NULL,
	Nama        VARCHAR(255) NOT NULL,
	Kota        VARCHAR(255) NOT NULL,
	Negara      VARCHAR(255) NOT NULL,
	Kode_IATA   CHAR(3) NOT NULL,
	PRIMARY KEY (ID, Kode_IATA)
);

create table Maskapai (
	ID char(6) not null,
	Nama varchar(255) not null,
	Negara_Asal varchar(255) not null,
	PRIMARY KEY (ID)
);

create table Pesawat (
	ID char(6) not null,
	Model varchar(255) not null,
	Kapasitas int not null,
	Tahun_Produksi char(4) not null,
	Status_Pesawat varchar(50) not null,
	Maskapai_ID char(6) not null,
	PRIMARY KEY (ID),
	FOREIGN KEY (Maskapai_ID) REFERENCES Maskapai(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

create table Bagasi (
	ID int not null,
	Berat int not null,
	Ukuran varchar(5) not null,
	Warna varchar(255) not null,
	Jenis varchar(255) not null,
	PRIMARY KEY(ID)
);

CREATE TABLE Penumpang (
	NIK char(16) not null,
	Nama VARCHAR(255) NOT NULL,
	Tanggal_Lahir DATE NOT NULL,
	Alamat VARCHAR(255) NOT NULL,
	No_Telpon VARCHAR(13) NOT NULL,
	Jenis_Kelamin CHAR(1) NOT NULL,
	Kewarganegaraan VARCHAR(255) NOT NULL,
	Bagasi_ID INT NOT NULL,
	PRIMARY KEY (NIK),
	FOREIGN KEY (Bagasi_ID) REFERENCES Bagasi(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Penerbangan (
	ID CHAR(6) NOT NULL,
	Waktu_Keberangkatan DATETIME NOT NULL,
	Waktu_Sampai DATETIME NOT NULL,
	Status_Penerbangan VARCHAR(50) NOT NULL,
	Pesawat_ID CHAR(6) NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (Pesawat_ID) REFERENCES Pesawat(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

create table Tiket (
	ID char(6) not null,
	Nomor_Kursi char(3) not null,
	Harga int not null,
	Waktu_Pembelian datetime not null,
	Kelas_Penerbangan varchar(50)  not null,
	Penumpang_NIK char(16) not null,
	Penerbangan_ID char(6) not null,
	PRIMARY KEY (ID),
	FOREIGN KEY (Penumpang_NIK) REFERENCES Penumpang(NIK)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (Penerbangan_ID) REFERENCES Penerbangan(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

create table Bandara_Penerbangan (
	Bandara_ID int not null,
	Penerbangan_ID char(6) not null,
	PRIMARY KEY (Bandara_ID, Penerbangan_ID),
	FOREIGN KEY (Bandara_ID) REFERENCES Bandara(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (Penerbangan_ID) REFERENCES Penerbangan(ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
