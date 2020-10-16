declare @materialCount int ;

declare MaterialCount Cursor for select id from TemporaryMIS
open MAterialCount
fetch next from MaterialCount into @materialCount
while (@@FETCH_STATUS=0)
Begin
select id,user_name,keyboard,mouse,technology from TemporaryMIS where id=@materialCount
fetch next from MaterialCount into @MaterialCount
end
close MaterialCount
deallocate MaterialCount



