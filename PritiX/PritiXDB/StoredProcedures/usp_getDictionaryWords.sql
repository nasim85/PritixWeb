CREATE PROCEDURE [dbo].[usp_getDictionaryWords]
	@DictionaryId int
AS
BEGIN

SELECT        PrimaryWord, TransaledWord
FROM            DictionaryWords
WHERE        (Active = 1) AND (DictionaryID = @DictionaryId)

END
GO
