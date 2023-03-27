SELECT * FROM hotel.namgu;

SELECT 구분, 세대수, 면적
FROM Namgu;

SELECT DISTINCT 면적, 구분, 세대수
FROM Namgu;

SELECT * FROM Namgu WHERE 구분 = '문현2동 ';
SELECT * FROM Namgu WHERE 구성비 = 3;

SELECT * FROM Namgu WHERE 구분 LIKE '문현%';
SELECT * FROM Namgu WHERE 구분 LIKE '%문현%';


