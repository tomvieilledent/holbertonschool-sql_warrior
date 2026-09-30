SELECT
    location.num_facture,
    SUM(manga.prix_base * types.coefficient) AS depenses
FROM table_location AS location
JOIN mangas AS manga ON location.num_manga = manga.num_manga
JOIN types_location AS types ON location.code_type = types.code_type
GROUP BY location.num_facture
ORDER BY location.num_facture;
