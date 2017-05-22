CREATE TABLE [dbo].[Words]
(
	[WordID] INT NOT NULL PRIMARY KEY, 
    [Word] VARCHAR(50) NULL, 
    [LanguageID] INT NULL, 
    [active] BIT NULL
)
