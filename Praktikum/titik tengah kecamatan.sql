SELECT
    nama AS wilayah_kecamatan,
    ST_AsText(ST_Centroid(geom)) AS titik_centroid
FROM transportasi.wilayah;