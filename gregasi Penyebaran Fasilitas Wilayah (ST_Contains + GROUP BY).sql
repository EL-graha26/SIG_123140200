SELECT 
    w.nama AS nama_kecamatan,
    COUNT(h.id) AS jumlah_halte
FROM transportasi.wilayah w
LEFT JOIN transportasi.halte h ON ST_Contains(w.geom, h.geom)
GROUP BY w.nama
ORDER BY jumlah_halte DESC;