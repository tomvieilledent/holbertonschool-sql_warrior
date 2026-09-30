SELECT
    location.num_facture,
    client.prenom,
    client.nom,
    manga.titre,
    types.libelle,
    location.date_retour
FROM table_location AS location
JOIN factures AS facture ON location.num_facture = facture.num_facture
JOIN clients AS client ON facture.code_client = client.code_client
JOIN mangas AS manga ON location.num_manga = manga.num_manga
JOIN types_location AS types ON location.code_type = types.code_type
ORDER BY client.code_client, location.num_facture, location.num_manga;
