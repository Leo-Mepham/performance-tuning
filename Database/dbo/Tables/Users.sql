CREATE TABLE [dbo].[Users] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Forename]       NVARCHAR (50)  NOT NULL,
    [Surname]        NVARCHAR (50)  NOT NULL,
    [Country]        NVARCHAR (200) NOT NULL,
    [WhenRegistered] DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);





