IMPORT $;
Persons := $.File_Persons.File;

Persons;

OUTPUT(COUNT(Persons));

OUTPUT(Persons,{ID,First_Name,LastName});
OUTPUT(Persons,{ID,StreetAddress,City,State,ZipCode},NAMED('Address_Info'));