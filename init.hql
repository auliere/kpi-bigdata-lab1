CREATE DATABASE IF NOT EXISTS dm;
create external table UO_table2 (name string,
sname string,
edrpou int,
place string,
director string,
activity string,
status string)
ROW FORMAT SERDE "org.apache.hadoop.hive.serde2.OpenCSVSerde"
WITH SERDEPROPERTIES 
(
"separatorChar" = ",",
"quoteChar" = "\"",
"skip.header.line.count"="1"
)
STORED AS TEXTFILE
LOCATION '/tables_data/EDRPOU/';