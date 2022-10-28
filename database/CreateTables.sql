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

CREATE TABLE IF NOT EXISTS PlayerToTeam (
    PlayerToTeamID SERIAL PRIMARY KEY,
    PlayerID INT NOT NULL,
    TeamID INT NOT NULL, 
    StartDate VARCHAR(50),
    EndDate VARCHAR(50),
    CONSTRAINT FK_PlayerToTeam_Team FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    CONSTRAINT FK_PlayerToTeam_Player FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE IF NOT EXISTS Player (
    PlayerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Birthday VARCHAR(50),
    Height INT,
    Weight INT,
    Throws INT, 
    Bats INT, 
    JerseyNumber INT,
    Active BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS PlayerToPosition (
    PlayerToPositionID SERIAL PRIMARY KEY,
    PlayerID INT NOT NULL, 
    PositionID INT NOT NULL, 
    StareDate VARCHAR(50),
    EndDate VARCHAR(50),
    CONSTRAINT FK_PlayerToPosition_Player FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    CONSTRAINT FK_PlayerToPosition_Position FOREIGN KEY (PositionID) REFERENCES Position(PositionID)
);

CREATE TABLE IF NOT EXISTS Position (
    PositionID SERIAL PRIMARY KEY,
    PositionCode VARCHAR(50),
    PositionDescription VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS PlayerToPositionDesignation (
    PlayerToPositionDesignationID SERIAL PRIMARY KEY,
    PlayerID INT NOT NULL, 
    PositionDesignationID INT NOT NULL, 
    StartDate VARCHAR(50),
    EndDate VARCHAR(50),
    CONSTRAINT FK_PlayerToPositionDesignation_Player FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    CONSTRAINT FK_PlayerToPositionDesignation_PositionDesignation FOREIGN KEY (PositionDesignationID) REFERENCES PositionDesignation(PositionDesignationID)
);


CREATE TABLE IF NOT EXISTS PositionDesignation (
    PositionDesignationID SERIAL PRIMARY KEY, 
    DesignationDescription VARCHAR(50)
);