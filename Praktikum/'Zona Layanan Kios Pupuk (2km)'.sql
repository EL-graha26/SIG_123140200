SELECT
    'Zona Layanan Kios Pupuk (2km)' AS keterangan,
    ST_Union(ST_Buffer(geom::geography, 2000)::geometry) AS total_coverage
FROM pertanian.kios_pupuk
WHERE aktif = TRUE;