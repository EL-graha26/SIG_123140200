SELECT 
    r.nama_rute,
    w.nama AS wilayah_yang_dilewati,
    r.jenis AS jenis_angkutan
FROM transportasi.rute r
JOIN transportasi.wilayah w ON ST_Intersects(r.geom, w.geom)
WHERE w.nama = 'Tanjung Karang Pusat';