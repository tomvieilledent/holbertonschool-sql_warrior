SELECT
    client.ville,
    ROUND(SUM(manga.prix_base * types.coefficient), 2) AS chiffre_affaires
FROM clients AS client
JOIN factures AS facture ON client.code_client = facture.code_client
JOIN table_location AS location ON facture.num_facture = location.num_facture
JOIN mangas AS manga ON location.num_manga = manga.num_manga
JOIN types_location AS types ON location.code_type = types.code_type
GROUP BY client.ville
ORDER BY chiffre_affaires DESC;
