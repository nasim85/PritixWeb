-- =============================================
-- Author:		Nasim
-- Create date: 21/5/2017
-- Description:	Get directory list
-- =============================================
CREATE PROCEDURE usp_GetDictionaries
	@userID int =0 
AS
BEGIN

SELECT        Dictionaries.DictionaryId, Dictionaries.DictionaryName, Dictionaries.PrimaryLanguageID, Dictionaries.TranslatedLanguageID, PL.Language AS PrimaryLanguage, 
                         TL.Language AS TranslatedLanguare, Dictionaries.CreatedBy
FROM            Dictionaries INNER JOIN
                         Languages PL ON Dictionaries.PrimaryLanguageID = PL.LanguageID INNER JOIN
                         Languages TL ON Dictionaries.TranslatedLanguageID = TL.LanguageID
WHERE        (Dictionaries.Active = 1) AND (Dictionaries.CreatedBy = (case @UserID when 0 then Dictionaries.CreatedBy else @userID end))

END
GO
