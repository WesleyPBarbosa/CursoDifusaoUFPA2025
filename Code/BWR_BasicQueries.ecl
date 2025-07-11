IMPORT $;
Persons := $.File_Persons.File;


//4. Gere uma saída para as tabelas Persons e Accounts, simplesmente usando o nome da definição no seu arquivo ECL.
Persons;

//5. Gere uma contagem de todos os registros nas tabelas Persons e Accounts.
COUNT(Persons);

//6. Gere uma saída para a tabela Persons, limitando o resultado ao ID, Last e First Name.
OUTPUT(Persons,{ID,First_Name,LastName});

// 8. Gere uma saída para a tabela Pessoas, limitando o resultado ao ID, StreetAddress, City, State e ZipCode, e nomeie a aba de resultado no ECL IDE "Address_Info" (Dica: consulte a seção Named OUTPUT neste livro).
OUTPUT(Persons,{ID,StreetAddress,City,State,ZipCode},NAMED('Address_Info'));
