SELECT 
    h2.nama AS halte_terdekat,
    h2.jenis AS tipe_angkutan,
    ROUND(ST_Distance(h1.geom::geography, h2.geom::geography)::numeric, 2) AS jarak_meter
FROM transportasi.halte h1, transportasi.halte h2
WHERE h1.nama = 'Halte Tanjung Karang' 
  AND h2.nama != 'Halte Tanjung Karang'
ORDER BY h1.geom <-> h2.geom
LIMIT 3;