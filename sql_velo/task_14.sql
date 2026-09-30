SELECT utilisateur.*
FROM utilisateurs AS utilisateur
LEFT JOIN locations AS location ON location.utilisateur_id = utilisateur.id
WHERE location.id IS NULL;
