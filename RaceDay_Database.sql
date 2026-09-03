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
