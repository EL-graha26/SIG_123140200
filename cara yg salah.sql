SELECT 
    a.nama AS asal, 
    b.nama AS tujuan,
    ST_Distance(a.geom, b.geom) AS jarak_derajat
FROM fasilitas_publik a, fasilitas_publik b
WHERE a.nama = 'SMA Pangudi Luhur' 
  AND b.nama = 'Pasar Way Kandis';