SELECT 
    a.nama AS asal, 
    b.nama AS tujuan,
    ST_Distance(a.geom::geography, b.geom::geography) AS jarak_geography_meter
FROM fasilitas_publik a, fasilitas_publik b
WHERE a.nama = 'SMA Pangudi Luhur' 
  AND b.nama = 'Pasar Way Kandis';