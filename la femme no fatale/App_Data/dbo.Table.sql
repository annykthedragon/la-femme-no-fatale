CREATE TABLE [dbo].[Articles]
(
	[a_id]		INT			NOT NULL, 
    [a_name]	NCHAR(250)	NULL, 
    [a_author]	NCHAR(50)	NULL,
    PRIMARY KEY CLUSTERED ([a_id] ASC)
)
