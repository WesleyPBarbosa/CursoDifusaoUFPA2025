IMPORT $;
Persons := $.File_Persons.File;

Param1 := Persons(State="FL");

COUNT(Persons);