SELECT 
    nama_kelurahan AS nama_daerah,
    --meter
    ST_Area(ST_Transform(geom, 32748)) AS luas_m2,
    -- hektar
    ST_Area(ST_Transform(geom, 32748)) / 10000 AS luas_ha

FROM wilayah
WHERE nama_kelurahan = 'Tanjung Senang';