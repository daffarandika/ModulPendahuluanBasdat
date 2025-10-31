USE 5053251017_bandara_db;

INSERT INTO Bandara (ID, Nama, Kota, Negara, Kode_IATA) VALUES
(1, 'Soekarno-Hatta', 'Jakarta', 'Indonesia', 'CGK'),
(2, 'Ngurah Rai', 'Denpasar', 'Indonesia', 'DPS'),
(3, 'Changi', 'Singapore', 'Singapore', 'SIN'),
(4, 'Haneda', 'Tokyo', 'Japan', 'HND');

INSERT INTO Bagasi (ID, Berat, Ukuran, Warna, Jenis) VALUES
(1, 20, 'M', 'Hitam', 'Koper'),
(2, 15, 'S', 'Merah', 'Ransel'),
(3, 25, 'L', 'Biru', 'Koper'),
(4, 10, 'S', 'Hijau', 'Ransel');

INSERT INTO Maskapai (ID, Nama, Negara_Asal) VALUES
('GA123', 'Garuda Indonesia', 'Indonesia'),
('SQ456', 'Singapore Airlines', 'Singapore'),
('JL789', 'Japan Airlines', 'Japan'),
('QZ987', 'AirAsia', 'Malaysia');

INSERT INTO Pesawat (ID, Model, Kapasitas, Tahun_Produksi, Status_Pesawat, Maskapai_ID) VALUES
('PKABC1', 'Boeing 737', 180, '2018', 'Aktif', 'GA123'),
('PKDEF2', 'Airbus A320', 150, '2020', 'Aktif', 'SQ456'),
('PKGHI3', 'Boeing', 250, '2019', 'Dalam Perawatan', 'JL789'),
('PKJKL4', 'Airbus A330', 280, '2021', 'Aktif', 'QZ987');

INSERT INTO Penumpang (NIK, Nama, Tanggal_Lahir, Alamat, No_Telpon, Jenis_Kelamin, Kewarganegaraan, Bagasi_ID) VALUES
('3201123456789012', 'Budi Santoso', '1990-04-15', 'Jl. Merdeka No.1', '081234567890', 'L', 'Indonesia', 1),
('3302134567890123', 'Siti Aminah', '1985-08-20', 'Jl. Kebangsaan No.2', '081298765432', 'P', 'Indonesia', 2),
('3403145678901234', 'John Tanaka', '1992-12-05', 'Shibuya, Tokyo', '080123456789', 'L', 'Japan', 3),
('3504156789012345', 'Li Wei', '1995-03-10', 'Orchard Rd, Singapore', '0658123456789', 'L', 'Singapore', 4);

INSERT INTO Penerbangan (ID, Waktu_Keberangkatan, Waktu_Sampai, Status_Penerbangan, Pesawat_ID) VALUES
('FL0001', '2024-12-15 10:00:00', '2024-12-15 12:30:00', 'Jadwal', 'PKABC1'),
('FL0002', '2024-12-16 08:00:00', '2024-12-16 10:45:00', 'Jadwal', 'PKDEF2'),
('FL0003', '2024-12-17 14:00:00', '2024-12-17 16:30:00', 'Ditunda', 'PKGHI3'),
('FL0004', '2024-12-18 18:00:00', '2024-12-18 20:30:00', 'Jadwal', 'PKJKL4');

INSERT INTO Bandara_Penerbangan (Bandara_ID, Penerbangan_ID) VALUES
(1, 'FL0001'),
(2, 'FL0002'),
(3, 'FL0003'),
(4, 'FL0004');

INSERT INTO Tiket (ID, Nomor_Kursi, Harga, Waktu_Pembelian, Kelas_Penerbangan, Penumpang_NIK, Penerbangan_ID) VALUES
('TIK001', '12A', 1200000, '2024-11-01 08:00:00', 'Ekonomi', '3201123456789012', 'FL0001'),
('TIK002', '14B', 1500000, '2024-11-02 09:30:00', 'Bisnis', '3302134567890123', 'FL0002'),
('TIK003', '16C', 2000000, '2024-11-03 10:15:00', 'Ekonomi', '3403145678901234', 'FL0003'),
('TIK004', '18D', 1000000, '2024-11-04 11:45:00', 'Ekonomi', '3504156789012345', 'FL0004');

