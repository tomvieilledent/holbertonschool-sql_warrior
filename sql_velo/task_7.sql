SELECT
    location.id,
    utilisateur.nom_complet,
    velo.code,
    location.date_debut,
    location.date_fin,
    paiement.montant
FROM locations AS location
JOIN utilisateurs AS utilisateur ON location.utilisateur_id = utilisateur.id
JOIN velos AS velo ON location.velo_id = velo.id
JOIN paiements AS paiement ON paiement.location_id = location.id
WHERE location.id = 1;
