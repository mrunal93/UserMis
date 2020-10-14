create table DateWisePArtition_User_Engagement_MIS(id int,
candidate_id int,
Date_Time  DATEtime NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time float NOT NULL,
Cpu_idle_Time float NOT NULL,
cpu_percent float NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot float NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min float NOT NULL,
cpu_avg_load_over_5_min   float NOT NULL,
cpu_avg_load_over_15_min float NOT NULL,
system_total_memory BIGINT NOT NULL,
system_used_memory BIGINT NOT NULL,
system_free_memory BIGINT NOT NULL,
system_active_memory BIGINT NOT NULL,
system_inactive_memory BIGINT NOT NULL,
system_buffers_memory BIGINT NOT NULL,
system_cached_memory BIGINT NOT NULL,
system_shared_memory BIGINT NOT NULL,
system_avalible_memory BIGINT NOT NULL,
disk_total_memory BIGINT NOT NULL,
disk_used_memory BIGINT NOT NULL,
disk_free_memory BIGINT NOT NULL,
disk_read_count BIGINT NOT NULL,
disk_write_count BIGINT NOT NULL,
disk_read_bytes BIGINT NOT NULL,
disk_write_bytes BIGINT NOT NULL,
time_spent_reading_from_disk BIGINT NOT NULL,
time_spent_writing_to_disk BIGINT NOT NULL,
time_spent_doing_actual_Input_Output BIGINT NOT NULL,
number_of_bytes_sent BIGINT NOT NULL,
number_of_bytes_received BIGINT NOT NULL,
number_of_packets_sent BIGINT NOT NULL,
number_of_packets_recived BIGINT NOT NULL,
total_number_of_errors_while_receiving BIGINT NOT NULL,
total_number_of_errors_while_sending BIGINT NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT NOT NULL,
boot_time varchar(100) NOT NULL,
keyboard int NOT NULL,
mouse int NOT NULL,
technology varchar(100) NOT NULL,
files_changed int NOT NULL,
  CONSTRAINT FK_user_engagemnt_mis_candidate_id_2 FOREIGN KEY (candidate_id) REFERENCES tb_FellowshipCandidates (id),
) on pt_DateWisePartition_Scheme(Date_Time);

select * from sys.filegroups

select $partition.pt_DateWisePartition_Function(Date_Time)as PartitionNumber,*
from DateWisePArtition_User_Engagement_MIS;

select part.partition_number as [Partition Number],
fle.name as [Partition Name],
part.rows as [Number of Rows]
from sys.partitions as part
join sys.destination_data_spaces as dest on part.partition_number = dest.destination_id
join sys.filegroups as fle on
dest.data_space_id = fle.data_space_id
where OBJECT_NAME(OBJECT_ID) = 'DateWisePArtition_User_Engagement_MIS'
