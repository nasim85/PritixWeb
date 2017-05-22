CREATE TABLE [dbo].[Users]
(
	[UserID] INT NOT NULL  IDENTITY, 
    [Username] VARCHAR(20) NOT NULL, 
    [password] NVARCHAR(50) NULL, 
    [Active] BIT NULL, 
    [Emailverified] BIT NULL, 
    [DisplayName] VARCHAR(20) NULL, 
    [AdminUser] BIT NULL, 
    CONSTRAINT [PK_Users] PRIMARY KEY ([UserID])
)

GO

CREATE UNIQUE INDEX [IX_Users_Column] ON [dbo].[Users] (Username)
