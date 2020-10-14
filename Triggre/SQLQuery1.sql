create trigger tr_Forinsert on tb_UserEngagementMis
after insert
as
begin
declare @email varchar (50);
declare @dateAttendance datetime;
declare @time datetime;

select @email=i.email_id,@dateAttendance=i.date_of_attendancce,@time=i.time_of_attendance from inserted i;

insert into tb_UserEngagmentSummary(EmailId,DateOfAttendance,TimeOfAttendance,UpdatedOn) 
values(@email,@dateAttendance,@time,GETDATE());
end