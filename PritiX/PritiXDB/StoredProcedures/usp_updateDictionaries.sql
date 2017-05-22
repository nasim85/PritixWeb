-- =============================================
-- Author:		Nasim
-- Create date: 21/5/2017
-- Description:	Update directory
-- =============================================
CREATE PROCEDURE usp_updateDictionaries
	@DictionaryId int,
	@DictionaryName varchar(20),
	@PrimaryLanguageID int,
	@TranslatedLanguageID int,
	@Active bit,
	@userID int
AS
BEGIN

	if exists(select * from Dictionaries where DictionaryId=@DictionaryId)
		begin
			UPDATE       Dictionaries
			SET DictionaryName =@DictionaryName, PrimaryLanguageID =@PrimaryLanguageID, TranslatedLanguageID =@TranslatedLanguageID, Active =@Active, ModifiedOn =GETDATE(), ModifiedBy =@userID
			Where DictionaryId=@DictionaryId
		End
	else
		Begin
			INSERT INTO Dictionaries
                         (DictionaryName, PrimaryLanguageID, TranslatedLanguageID, Active, CreatedOn, CreatedBy)
VALUES        (@DictionaryName,@PrimaryLanguageID,@TranslatedLanguageID,@Active,GETDATE(),@userID)
		End
END
GO
