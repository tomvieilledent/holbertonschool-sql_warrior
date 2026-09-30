SELECT utilisateur.nom_complet, COUNT(*) AS nombre_locations
FROM utilisateurs AS utilisateur
JOIN locations AS location ON location.utilisateur_id = utilisateur.id
GROUP BY utilisateur.id, utilisateur.nom_complet
ORDER BY utilisateur.id;
