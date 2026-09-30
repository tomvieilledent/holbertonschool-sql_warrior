SELECT manga.titre, mangaka.prenom, mangaka.nom, mangaka.pays
FROM mangas AS manga
JOIN mangakas AS mangaka ON manga.code_mangaka = mangaka.code_mangaka
ORDER BY manga.titre;
