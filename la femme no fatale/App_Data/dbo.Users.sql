CREATE TABLE [dbo].[Users] (
    [id]       INT        NOT NULL,
    [name]     NCHAR (50) NULL,
    [login]    NCHAR (50) NULL,
    [password] NCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

