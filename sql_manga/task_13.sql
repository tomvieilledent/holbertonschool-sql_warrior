SELECT
    client.ville,
    SUM(CASE WHEN genres.signification = 'Aventure' THEN 1 ELSE 0 END) AS Aventure,
    SUM(CASE WHEN genres.signification = 'Fantasy' THEN 1 ELSE 0 END) AS Fantasy,
    SUM(CASE WHEN genres.signification = 'Horreur' THEN 1 ELSE 0 END) AS Horreur,
    SUM(CASE WHEN genres.signification = 'Shōnen' THEN 1 ELSE 0 END) AS Shōnen
FROM clients AS client
JOIN factures AS facture ON client.code_client = facture.code_client
JOIN table_location AS location ON facture.num_facture = location.num_facture
JOIN mangas AS manga ON location.num_manga = manga.num_manga
JOIN genres_manga AS genres ON manga.code_genre = genres.code_genre
GROUP BY client.ville
ORDER BY client.ville;
