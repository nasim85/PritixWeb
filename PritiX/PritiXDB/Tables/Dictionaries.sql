CREATE TABLE [dbo].[Dictionaries]
(
	[DictionaryId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DictionaryName] VARCHAR(50) NULL, 
    [PrimaryLanguageID] INT NULL, 
    [TranslatedLanguageID] INT NULL,
    [Active] BIT NULL, 
    [CreatedOn] DATETIME NULL, 
    [CreatedBy] INT NULL, 
    [ModifiedOn] DATETIME NULL, 
    [ModifiedBy] INT NULL)
