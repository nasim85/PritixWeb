CREATE TABLE [dbo].[Languages]
(
	[LanguageID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Language] VARCHAR(20) NULL, 
    [Active] BIT NULL
)
