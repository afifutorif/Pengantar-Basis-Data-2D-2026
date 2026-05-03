`dokter`

USE klinik_sehat_bersama;

CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(100)
);

CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);

INSERT INTO dokter VALUES
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Siti', 'Gigi');

INSERT INTO pasien VALUES
(1, 'Budi', '2000-05-10', '081234567890'),
(2, 'Ani', '1998-08-15', '082345678901');

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2024-01-10', 'Flu'),
(2, 2, 2, '2024-01-11', 'Sakit gigi');

tidak valid
INSERT INTO rekam_medis VALUES
(3, 1, 99, '2024-01-12', 'Demam');

SELECT * FROM rekam_medis;

SELECT 
    rm.id_rekam,
    p.nama_pasien,
    d.nama_dokter,
    rm.tanggal_periksa,
    rm.diagnosis
FROM rekam_medis rm
JOIN pasien p ON rm.id_pasien = p.id_pasien
JOIN dokter d ON rm.id_dokter = d.id_dokter;

UPDATE pasien
SET no_telepon = '089876543210'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

DELETE FROM rekam_medis
WHERE id_rekam = 1;