SELECT
    'Coverage Layanan Halte (500m)' AS keterangan,
    ST_Union(ST_Buffer(geom::geography, 500)::geometry) AS total_coverage
FROM transportasi.halte
WHERE aktif = TRUE;