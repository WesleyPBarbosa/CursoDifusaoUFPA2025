IMPORT $;
Persons := $.File_Persons.File;

//Exercicio 7a - IntroECL_Parte1

//4. Filtre e conte todas as pessoas que moram no estado da Flórida. Sua contagem esperada é 40854.
Persons(STATE='FL');
COUNT(Persons(STATE='FL'));

//5. Filtre e conte todas as pessoas que vivem no estado da Flórida e na cidade de Miami. Sua contagem esperada é agora 2438.
Persons(STATE='FL' AND City = 'MIAMI');
COUNT(Persons(STATE='FL' AND City = 'MIAMI'));


// 6. Filtre e conte todas as pessoas que moram no estado da Flórida, na cidade de Miami, e tenham um código postal 33102. Sua contagem esperada é agora 40.
Persons(STATE='FL' AND City = 'MIAMI' AND ZipCode = '33102');
COUNT(Persons(STATE='FL' AND City = 'MIAMI' AND ZipCode = '33102'));

// 7. Filtre e conte todas as pessoas cujo nome começa com a letra 'B'. Use várias condições de filtro nesta consulta. Sua contagem esperada é 31193.
Persons(First_Name >= 'B' AND MiddleName <> 'O');
COUNT(Persons(First_Name >= 'B' AND MiddleName <> 'O'));

// 8. Filtre e conte todas as pessoas cujo ano de data do arquivo é posterior a 2000. Sua contagem esperada é 687.

Persons(FileDate[..4] > '20000000');
COUNT(Persons(FileDate[..4] > '20000000'));
//[..4] -> É um slice, ou seja, '..' significa da posição inicial '4' significa até a 4ª Posição