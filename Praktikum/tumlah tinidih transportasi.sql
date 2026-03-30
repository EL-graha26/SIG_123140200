SELECT
    h.nama AS halte,
    w.nama AS wilayah_kecamatan,
    ST_Area(ST_Intersection(
        ST_Buffer(h.geom::geography, 500)::geometry, w.geom
    )::geography) AS area_irisan_m2
FROM transportasi.halte h, transportasi.wilayah w
WHERE ST_Intersects(ST_Buffer(h.geom::geography, 500)::geometry, w.geom);