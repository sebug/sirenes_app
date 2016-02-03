CREATE SEQUENCE sirene_sequence
CREATE TABLE Sirene (
       SireneID INT NOT NULL DEFAULT nextval('sirene_sequence') PRIMARY KEY,
       Code VARCHAR(50) NOT NULL );

