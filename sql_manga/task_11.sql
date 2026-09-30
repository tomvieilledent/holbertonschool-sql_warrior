SELECT
    client.code_client,
    client.prenom,
    client.nom,
    COUNT(*) AS nombre_de_location,
    ROUND(SUM(manga.prix_base * types.coefficient), 2) AS total_depenses
FROM clients AS client
JOIN factures AS facture ON client.code_client = facture.code_client
JOIN table_location AS location ON facture.num_facture = location.num_facture
JOIN mangas AS manga ON location.num_manga = manga.num_manga
JOIN types_location AS types ON location.code_type = types.code_type
GROUP BY client.code_client, client.prenom, client.nom
ORDER BY total_depenses DESC
LIMIT 5;
