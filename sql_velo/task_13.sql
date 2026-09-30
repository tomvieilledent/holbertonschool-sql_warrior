SELECT velo.code, COUNT(location.id) AS total_locations
FROM velos AS velo
LEFT JOIN locations AS location ON location.velo_id = velo.id
GROUP BY velo.id, velo.code
ORDER BY total_locations DESC, velo.code;
