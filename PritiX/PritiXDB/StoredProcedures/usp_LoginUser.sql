-- =============================================
-- Author:		Nasim
-- Create date: 21/5/2017
-- Description:	add user
-- =============================================
CREATE PROCEDURE usp_LoginUser
	@Username varchar(20),
	@password nvarchar(50)
AS
BEGIN

if exists(select * from Users where Username=@Username)
	Begin
		SELECT userid from Users where Username=@Username
	END
ELSE
	BEGIN	
		SELECT 0
	END	

END
GO
