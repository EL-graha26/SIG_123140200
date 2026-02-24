-- Cek SRID dari kolom geometry
SELECT ST_SRID(geom) as srid
FROM fasilitas_publik
LIMIT 1;
-- Cek SRID semua tabel di database
SELECT f_table_name, f_geometry_column,
srid, type
FROM geometry_columns;
-- Detail info CRS dari SRID
SELECT *
FROM spatial_ref_sys
WHERE srid = 4326;