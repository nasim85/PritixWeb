-- =============================================
-- Author:		Nasim
-- Create date: 21/5/2017
-- Description:	add user display name
-- =============================================
CREATE PROCEDURE [dbo].[usp_getUserDisplayName]
	@userId int
AS
BEGIN

if exists(select * from Users where UserID=@userId)
	Begin
		SELECT DisplayName from Users where UserID=@userId
	END
ELSE
	BEGIN	
		SELECT 'Guest'
	END	

END
GO
