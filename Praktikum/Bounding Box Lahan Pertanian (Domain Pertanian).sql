SELECT
    jenis_tanaman,
    ST_AsText(ST_Envelope(ST_Collect(geom))) AS bounding_box
FROM pertanian.lahan
GROUP BY jenis_tanaman;