SELECT types.code_type, COUNT(*) AS nb_utilisations
FROM table_location AS location
JOIN types_location AS types ON location.code_type = types.code_type
WHERE types.libelle = 'Retard régularisé'
GROUP BY types.code_type;
