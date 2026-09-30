SELECT
    genres.signification,
    ROUND(SUM(manga.prix_base * types.coefficient), 2) AS chiffre_affaires
FROM table_location AS location
JOIN mangas AS manga ON location.num_manga = manga.num_manga
JOIN genres_manga AS genres ON manga.code_genre = genres.code_genre
JOIN types_location AS types ON location.code_type = types.code_type
GROUP BY genres.signification
ORDER BY chiffre_affaires DESC;
