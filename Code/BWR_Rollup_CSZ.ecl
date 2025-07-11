IMPORT $;

myds := $.STD_Persons.File;


MyOutRecSet Mytransf(myrec Le, myrec Ri) := TRANSFORM
    SELF.account := Le.account +','+ Ri.account;
    SELF.balance := Le.balance + Ri.balance;
    SELF := Le;
END;

rolluprec := ROLLUP(myds,LEFT.RecID=RIGHT.owner,Mytransf(LEFT,RIGHT));