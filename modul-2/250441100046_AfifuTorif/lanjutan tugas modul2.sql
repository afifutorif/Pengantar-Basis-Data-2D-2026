DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2024-01-10', 'Flu'),
(2, 2, 2, '2024-01-11', 'Sakit gigi'),
(3, 1, 1, '2024-01-12', 'Batuk');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

DROP TABLE IF EXISTS rekam_medis;

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
) ENGINE=InnoDB;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2024-01-10', 'Flu'),
(2, 2, 2, '2024-01-11', 'batuk');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;
SELECT * FROM dokter;
SELECT * FROM pasien;
SELECT * FROM rekam_medis;