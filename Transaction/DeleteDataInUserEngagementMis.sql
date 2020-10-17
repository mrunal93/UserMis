USE [MIS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUserEngagementMis]    Script Date: 17-10-2020 08:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_DeleteUserEngagementMis] (@id int)
as
begin try
begin transaction
delete from tb_UserEngagementMis where id=@id;
commit transaction
end try
begin catch
rollback transaction
end catch