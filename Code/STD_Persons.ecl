IMPORT $,Std;

EXPORT STD_Persons := MODULE

    EXPORT Layout := RECORD
        $.UID_Persons.RecID;
        $.UID_Persons.ID;
        STRING15 FirstName   := std.Str.ToUpperCase($.UID_Persons.First_Name);
        STRING25 LastName    := std.Str.ToUpperCase($.UID_Persons.LastName);
        STRING1  MiddleName  := std.Str.ToUpperCase($.UID_Persons.MiddleName);
        STRING2  NameSuffix  := std.Str.ToUpperCase($.UID_Persons.NameSuffix);
        UNSIGNED4  FileDate  := (UNSIGNED4)$.UID_Persons.FileDate;
        $.UID_Persons.BureauCode;
        $.UID_Persons.Gender;
        UNSIGNED4  BirthDate := (UNSIGNED4)$.UID_Persons.BirthDate;
        $.UID_Persons.StreetAddress;
        $.UID_Persons.City;
        $.UID_Persons.State;
        UNSIGNED3  ZipCode   := (UNSIGNED3)$.UID_Persons.ZipCode;
    END;

    EXPORT File := TABLE($.UID_Persons,Layout):PERSIST('~CLASS::WPB::PERSIST::STD_Persons');
    //EXPORT File := TABLE($.UID_Persons,Layout);
END;
