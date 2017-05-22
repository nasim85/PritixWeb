-- =============================================
-- Author:		Nasim
-- Create date: 21/5/2017
-- Description:	add user
-- =============================================
CREATE PROCEDURE usp_addUser
	@Username varchar(20),
	@password nvarchar(50),
	@displayName varchar(20),
	@adminUser	bit
AS
BEGIN

if not exists(select * from Users where Username=@Username)
	Begin
		INSERT INTO Users
								 (Username, password, Active, Emailverified, DisplayName, AdminUser)
		VALUES        (@Username,@password,1,0,@displayName,0)
	End
END
GO
