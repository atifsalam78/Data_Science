USE bowling_league;

-- SELECT BowlerID, concat(BowlerFirstName, " ", BowlerMiddleInit, " ",BowlerLastName) as FullName, concat(BowlerAddress, ",", BowlerCity, ",", BowlerState, ",", BowlerZip, ",", BowlerPhoneNumber) as FormatedAddress
-- FROM bowlers
-- ORDER BY BowlerZip

SELECT TeamID, concat(BowlerLastName, " ",BowlerFirstName) as Bowlers
FROM bowlers