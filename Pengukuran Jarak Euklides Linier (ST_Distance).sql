SELECT 
    h2.nama AS halte_tujuan,
    ROUND(ST_Distance(h1.geom::geography, h2.geom::geography)::numeric, 2) AS jarak_meter,
    ROUND((ST_Distance(h1.geom::geography, h2.geom::geography) / 1000)::numeric, 2) AS jarak_km
FROM transportasi.halte h1, transportasi.halte h2
WHERE h1.nama = 'Halte Tanjung Karang' 
  AND h2.nama != 'Halte Tanjung Karang'
  AND h2.jenis = 'brt'
ORDER BY jarak_meter ASC;