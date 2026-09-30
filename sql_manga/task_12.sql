SELECT manga.titre, mangaka.prenom, mangaka.nom, genres.signification
FROM mangas AS manga
JOIN mangakas AS mangaka ON manga.code_mangaka = mangaka.code_mangaka
JOIN genres_manga AS genres ON manga.code_genre = genres.code_genre
WHERE genres.signification = 'Horreur'
ORDER BY manga.num_manga;
