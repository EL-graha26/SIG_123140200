SELECT 
    w.nama AS kecamatan_blank_spot_brt
FROM transportasi.wilayah w
WHERE NOT EXISTS (
    SELECT 1 FROM transportasi.halte h
    WHERE h.jenis = 'brt'
    AND ST_DWithin(w.geom::geography, h.geom::geography, 2000)
);