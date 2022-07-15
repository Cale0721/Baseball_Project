CREATE TABLE IF NOT EXISTS Venue (
    VenueID SERIAL PRIMARY KEY,
    VenueName VARCHAR(100) NOT NULL,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode INT
);

CREATE TABLE IF NOT EXISTS LeagueDetail (
    LeagueDetailID SERIAL PRIMARY KEY,
    LeagueCode VARCHAR(10) NOT NULL,
    LeagueName VARCHAR(100),
    DivisionCode VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Team (
    TeamID INT NOT NULL PRIMARY KEY,
    ShortName VARCHAR(50),
    LongName VARCHAR(500),
    VenueID INT NOT NULL,
    LeagueDetailID INT NOT NULL,
    CityAssociation VARCHAR(50),
    StateAssociation VARCHAR(50),
    CONSTRAINT FK_Team_Venue FOREIGN KEY (VenueID) REFERENCES Venue(VenueID),
    CONSTRAINT FK_Team_LeagueDetail FOREIGN KEY (LeagueDetailID) REFERENCES LeagueDetail(LeagueDetailID)
);

