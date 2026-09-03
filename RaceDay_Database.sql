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

