CREATE SEQUENCE address_sequence;
CREATE TABLE Address (
       AddressID INT NOT NULL DEFAULT nextval('address_sequence') PRIMARY KEY,
       City VARCHAR(255) NOT NULL,
       Street VARCHAR(255) NOT NULL,
       Access VARCHAR(1000) NULL
       );
CREATE SEQUENCE sirene_sequence;
CREATE TABLE Sirene (
       SireneID INT NOT NULL DEFAULT nextval('sirene_sequence') PRIMARY KEY,
       Code VARCHAR(50) NOT NULL,
       PrimaryAddressID INT NOT NULL REFERENCES Address (AddressID)
       );

CREATE SEQUENCE testentry_sequence;
CREATE TABLE TestEntry (
       TestEntryID INT NOT NULL DEFAULT nextval('testentry_sequence') PRIMARY KEY,
       SireneID INT NOT NULL REFERENCES Sirene (SireneID),
       TestYear INT NOT NULL,
       FirstAutomaticOK BOOLEAN NOT NULL,
       SecondAutomaticOK BOOLEAN NOT NULL,
       CommentsAutomatic VARCHAR(1000) NULL,
       FirstManualOK BOOLEAN NOT NULL,
       SecondManualOK BOOLEAN NOT NULL,
       CommentsManual VARCHAR(1000) NULL,
       Signing VARCHAR(255),
       PhoneNumber VARCHAR(100)
);

