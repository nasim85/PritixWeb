CREATE TABLE [dbo].[DictionaryWords]
(
	[DictionaryID] INT NOT NULL , 
    [PrimaryWord] VARCHAR(50) NOT NULL, 
    [TransaledWord] VARCHAR(50) NOT NULL, 
    [Active] BIT NULL, 
    CONSTRAINT [PK_DictionaryWords] PRIMARY KEY ([TransaledWord], [PrimaryWord], [DictionaryID])
)
