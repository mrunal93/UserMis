
create unique nonclustered index UXI_TemporaryMIS on TemporaryMIS
(Date_Time)


alter table TemporaryMIS add
constraint UQ_TemporaryMIS_Date_Time unique
clustered (Date_Time)