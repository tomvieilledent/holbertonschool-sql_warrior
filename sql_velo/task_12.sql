SELECT utilisateur.nom_complet, SUM(paiement.montant) AS total_depense
FROM utilisateurs AS utilisateur
JOIN locations AS location ON location.utilisateur_id = utilisateur.id
JOIN paiements AS paiement ON paiement.location_id = location.id
GROUP BY utilisateur.id, utilisateur.nom_complet
HAVING SUM(paiement.montant) > 10
ORDER BY utilisateur.id;
