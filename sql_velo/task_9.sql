SELECT velo.code, COUNT(*) AS nombre_locations
FROM velos AS velo
JOIN locations AS location ON location.velo_id = velo.id
GROUP BY velo.code
ORDER BY velo.code;
