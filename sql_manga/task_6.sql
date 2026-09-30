SELECT
    genres.signification AS genre,
    COUNT(*) AS nombre_de_manga_par_genre
FROM mangas AS manga
JOIN genres_manga AS genres ON manga.code_genre = genres.code_genre
GROUP BY genres.signification
ORDER BY nombre_de_manga_par_genre DESC;
