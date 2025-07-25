
EXPORT File_Chicago_Crimes := MODULE
    EXPORT Layout := RECORD
     STRING ID;
     STRING Case_Number;
     STRING Date;
     STRING Block;
     STRING IUCR;
     STRING Primary_Type;
     STRING Description;
     STRING Location_Description;
     STRING Arrest;
     STRING Domestic;
     STRING Beat;
     STRING District;
     STRING Ward;
     STRING Community_Area;
     STRING FBI_Code;
     STRING X_Coordinate;
     STRING Y_Coordinate;
     STRING Year;
     STRING Updated_On;
     STRING Latitude;
     STRING Longitude;
     STRING Location;
    END;
    EXPORT File := DATASET('~Chicago::WPB::chicagocrimes', Layout, CSV(heading(1)));
END;
