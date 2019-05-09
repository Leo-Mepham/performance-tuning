CREATE TABLE [dbo].[Products] (
    [Id]   INT             IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50)   NOT NULL,
    [Cost] DECIMAL (19, 6) NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC)
);



