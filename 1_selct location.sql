SELECT 
    w.nama AS nama_kecamatan, 
    h.nama AS nama_halte,
    h.jenis AS jenis_angkutan
FROM transportasi.wilayah w
JOIN transportasi.halte h ON ST_Contains(w.geom, h.geom)
WHERE w.nama = 'Tanjung Karang Pusat';