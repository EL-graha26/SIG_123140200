SELECT 
    a.nama AS asal, 
    b.nama AS tujuan,
    ST_Distance(
        ST_Transform(a.geom, 32748), 
        ST_Transform(b.geom, 32748)
    ) AS jarak_utm_meter
FROM fasilitas_publik a, fasilitas_publik b
WHERE a.nama = 'SMA Pangudi Luhur' 
  AND b.nama = 'Pasar Way Kandis';