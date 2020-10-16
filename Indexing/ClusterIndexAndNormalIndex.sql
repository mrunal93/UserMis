
drop index TemporaryMIS.PK__Temporar__3213E83FB5436F22;

 create index IX_TemporaryMis_FileChange on TemporaryMIS (files_changed desc)

 create clustered index IX_TemporaryMis_FileChange_technology
 on TemporaryMIS (files_changed desc,technology asc)

