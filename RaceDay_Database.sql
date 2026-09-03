--CREATE DATABASE RaceDayDB;

--CREATE TABLE Roles (
--    RoleID      INT IDENTITY(1,1) PRIMARY KEY,
--    RoleName    NVARCHAR(20) NOT NULL UNIQUE
--);

--CREATE TABLE Users (
--    UserID          INT IDENTITY(1,1) PRIMARY KEY,
--    FullName        NVARCHAR(100) NOT NULL,
--    Email           NVARCHAR(150) NOT NULL UNIQUE,
--    PasswordHash    NVARCHAR(255) NOT NULL,
--    RoleID          INT NOT NULL,
--    DateCreated     DATETIME NOT NULL DEFAULT GETDATE(),
--    CONSTRAINT FK_Users_Roles FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
--);

--CREATE TABLE Events (
--    EventID         INT IDENTITY(1,1) PRIMARY KEY,
--    Name            NVARCHAR(150) NOT NULL,
--    Description     NVARCHAR(500) NULL,
--    EventDate       DATE NOT NULL,
--    Location        NVARCHAR(150) NOT NULL,
--    OrganiserID     INT NOT NULL,
--    DateCreated     DATETIME NOT NULL DEFAULT GETDATE(),
--    CONSTRAINT FK_Events_Users FOREIGN KEY (OrganiserID) REFERENCES Users(UserID)
--);

--CREATE TABLE Categories (
--    CategoryID      INT IDENTITY(1,1) PRIMARY KEY,
--    Name            NVARCHAR(50) NOT NULL,
--    DistanceKm      DECIMAL(5,2) NOT NULL,
--    Fee             DECIMAL(8,2) NOT NULL DEFAULT 0,
--    EventID         INT NOT NULL,
--    CONSTRAINT FK_Categories_Events FOREIGN KEY (EventID) REFERENCES Events(EventID)
--);

--CREATE TABLE Enrolments (
--    EnrolmentID     INT IDENTITY(1,1) PRIMARY KEY,
--    EnrolmentDate   DATETIME NOT NULL DEFAULT GETDATE(),
--    Status          NVARCHAR(20) NOT NULL DEFAULT 'Confirmed',
--    ParticipantID   INT NOT NULL,
--    CategoryID      INT NOT NULL,
--    CONSTRAINT FK_Enrolments_Users FOREIGN KEY (ParticipantID) REFERENCES Users(UserID),
--    CONSTRAINT FK_Enrolments_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
--    CONSTRAINT UQ_Enrolment UNIQUE (ParticipantID, CategoryID)
--);

--CREATE TABLE Results (
--    ResultID        INT IDENTITY(1,1) PRIMARY KEY,
--    FinishTime      TIME NULL,
--    Position        INT NULL,
--    Notes           NVARCHAR(255) NULL,
--    EnrolmentID     INT NOT NULL UNIQUE,
--    CONSTRAINT FK_Results_Enrolments FOREIGN KEY (EnrolmentID) REFERENCES Enrolments(EnrolmentID)
--);

--INSERT INTO Roles (RoleName) VALUES ('Organiser'), ('Participant');

 
--INSERT INTO Users (FullName, Email, PasswordHash, RoleID) VALUES
--('Thabo Mokoena', 'thabo.organiser@raceday.co.za', 'HASHED_PW_1', 1),   -- Organiser
--('Sarah van Wyk', 'sarah.organiser@raceday.co.za', 'HASHED_PW_2', 1),   -- Organiser
--('Lindiwe Dube',  'lindiwe.p@raceday.co.za',       'HASHED_PW_3', 2),   -- Participant
--('James Botha',   'james.p@raceday.co.za',         'HASHED_PW_4', 2);  -- Participant

 
--INSERT INTO Events (Name, Description, EventDate, Location, OrganiserID) VALUES
--('Joburg City Fun Run', 'A community fun run through the Johannesburg CBD.', '2026-10-10', 'Johannesburg', 1),
--('Cape Town Cycle Tour', 'Iconic road cycling event around the Cape Peninsula.', '2026-11-08', 'Cape Town', 2),
--('Soweto Marathon', 'Annual road marathon through the streets of Soweto.', '2026-11-22', 'Soweto', 1);

 
