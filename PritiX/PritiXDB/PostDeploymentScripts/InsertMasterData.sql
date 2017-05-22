/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


--Inserting Admin User
IF NOT EXISTS(SELECT * FROM [dbo].[Users] WHERE username='admin@pritix.com')
BEGIN
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT INTO [dbo].[Users] ([UserID],[DisplayName],[Username],[password],[Active],[Emailverified],[AdminUser]) VALUES (1,'Admin','admin@pritix.com','admin',1,1,1)
SET IDENTITY_INSERT [dbo].[Users] OFF
END	


--Inserting defaul languages
IF NOT EXISTS(SELECT * FROM [dbo].[Languages] WHERE Language='English')
BEGIN
SET IDENTITY_INSERT [dbo].[Languages] ON
INSERT INTO Languages (LanguageID, Language, Active) VALUES (1,'English',1)
SET IDENTITY_INSERT [dbo].[Languages] OFF
END	


--Inserting defaul languages
IF NOT EXISTS(SELECT * FROM [dbo].[Languages] WHERE Language='Dutch')
BEGIN
SET IDENTITY_INSERT [dbo].[Languages] ON
INSERT INTO [dbo].[Languages] (LanguageID, Language, Active) VALUES (2,'Dutch',1)
SET IDENTITY_INSERT [dbo].[Languages] OFF
END	



--Inserting defaul Directory
IF NOT EXISTS(SELECT * FROM [dbo].[Dictionaries] WHERE DictionaryId=1)
BEGIN
SET IDENTITY_INSERT [dbo].[Dictionaries] ON

INSERT INTO [dbo].[Dictionaries]
           ([DictionaryID]
           ,[DictionaryName]
           ,[PrimaryLanguageID]
           ,[TranslatedLanguageID]
           ,[Active]
           ,[CreatedOn]
           ,[CreatedBy])
     VALUES
           (1
           ,'Ducth to English'
           ,2
           ,1
           ,1
           ,getDate()
           ,1)
SET IDENTITY_INSERT [dbo].[Dictionaries] OFF
END	



--Inserting defaul Directory
IF NOT EXISTS(SELECT * FROM [dbo].[DictionaryWords] WHERE [DictionaryID]=1)
BEGIN

INSERT INTO [dbo].[DictionaryWords]
           ([DictionaryID]
           ,[PrimaryWord]
           ,[TransaledWord]
           ,[Active])
     VALUES
           (1
           ,'Groente'
           ,'Vegetable'
           ,1)
			,(1
           ,'Biefstuk'
           ,'Steak'
           ,1)
			,(1
           ,'Zak chips'
           ,'Bag of crisps'
           ,1)
			,(1
           ,'Kool'
           ,'Cabbage'
           ,1)
			,(1
           ,'Slim'
           ,'smart'
           ,1)



END	

