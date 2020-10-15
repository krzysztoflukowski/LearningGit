-- Testy SplitString

DECLARE @T TABLE (
    Instalacja VARCHAR(100),
    Marka VARCHAR(50)
);

INSERT INTO @T (Instalacja, Marka)
VALUES ('Instalacja 1', 'Skoda;VW'),
    ('Instalacja 2', 'Skoda'),
    ('Instalacja 3', 'Seat;Porsche'),
    ('Instalacja 5', 'KIA');


SELECT *
FROM @T;

SELECT *
FROM @T AS T
CROSS APPLY string_split(T.Marka, ';') AS SP;
