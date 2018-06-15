CREATE DATABASE IF NOT EXISTS dm;
drop table UO_table2;
create external table UO_table2 (
name string,
sname string,
edrpou string, 
place string,
director string,
activity string,
status string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES 
(
"separatorChar" = ",",
"quoteChar"     = "\"",
"skip.header.line.count"="0"
)
STORED AS TEXTFILE LOCATION '/tables_data/UO';
