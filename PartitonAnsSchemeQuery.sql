create partition function pt_DateWisePartition_Function(dateTime)
as
range Right for values(
'2019-11-01','2019-11-02','2019-11-03','2019-11-04','2019-11-05','2019-11-06','2019-11-07','2019-11-08',
'2019-11-09','2019-11-10','2019-11-11','2019-11-12','2019-11-13','2019-11-14','2019-11-15','2019-11-16',
'2019-11-17','2019-11-18','2019-11-19'
);

create partition Scheme pt_DateWisePartition_Scheme
as
partition pt_DateWisePartition_Function
to(
Date1,Date2,Date3,Date4,Date5,Date6,Date7,Date8,Date9,Date10,Date11,Date12,Date13,Date14,Date15,Date16,
Date17,Date18,Date19,Date20
)




