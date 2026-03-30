SELECT
    l.nama_pemilik,
    l.jenis_tanaman,
    l.luas_hektar,
    k.nama_kios
FROM pertanian.lahan l
JOIN pertanian.kios_pupuk k
ON ST_Intersects(l.geom, ST_Buffer(k.geom::geography, 2000)::geometry)
ORDER BY l.nama_pemilik;