IMPORT $;
Persons := $.File_Persons.Layout;

UID_Persons_r := RECORD
    UNSIGNED recid;
    Persons.ID;
    Persons.First_Name;
    Persons.LastName;
    Persons.MiddleName;
    Persons.NameSuffix;
    Persons.FileDate;
    Persons.BureauCode;
    Persons.MaritalStatus;
    Persons.Gender;
    Persons.DependentCount;
    Persons.BirthDate;
    Persons.StreetAddress;
    Persons.City;
    Persons.State;
    Persons.ZipCode;
END;

UID_Persons_r AddRecID(Persons Pa, UNSIGNED cnt) := TRANSFORM
 SELF.recid := cnt;
 SELF:= Pa;
 END;


EXPORT UID_Persons := PROJECT($.File_Persons.File, AddRecID(LEFT,COUNTER)):PERSIST('~CLASS::WPB::UID_Persons');