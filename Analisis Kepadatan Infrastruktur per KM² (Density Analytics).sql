SELECT 
    w.nama AS nama_kecamatan,
    COUNT(h.id) AS total_halte,
    ROUND((ST_Area(w.geom::geography) / 1000000)::numeric, 2) AS luas_km2,
    ROUND((COUNT(h.id)::numeric / (ST_Area(w.geom::geography) / 1000000))::numeric, 2) AS rasio_halte_per_km2
FROM transportasi.wilayah w
LEFT JOIN transportasi.halte h ON ST_Contains(w.geom, h.geom)
GROUP BY w.nama, w.geom
ORDER BY rasio_halte_per_km2 DESC;