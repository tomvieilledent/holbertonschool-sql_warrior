UPDATE mangas
SET prix_base = prix_base + 0.20
WHERE code_genre = (SELECT code_genre FROM genres_manga WHERE signification = 'Horreur');
