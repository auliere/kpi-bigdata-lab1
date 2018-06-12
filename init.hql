CREATE DATABASE IF NOT EXISTS dm;
drop table UO_table2;
create external table UO_table2 (
name string,
sname string,
edrpou int,
place string,
director string,
activity string,
status string)
ROW FORMAT SERDE "com.ibm.spss.hive.serde2.xml.XmlSerDe"
WITH SERDEPROPERTIES 
(
"column.xpath.name"="/ROW/Найменування",
"column.xpath.sname"="/ROW/Скорочена_назва",
"column.xpath.edrpou"="/ROW/Код_ЄДРПОУ",
"column.xpath.place"="/ROW/Місцезнаходження",
"column.xpath.director"="/ROW/ПІБ_керівника",
"column.xpath.activity"="/ROW/Основний_вид_діяльності",
"column.xpath.status"="/ROW/Стан"
)
STORED AS
INPUTFORMAT ‘com.ibm.spss.hive.serde2.xml.XmlInputFormat’
OUTPUTFORMAT ‘org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat’
LOCATION '/tables_data/EDRPOU/'
TBLPROPERTIES (
    "xmlinput.start":"<ROW>",
    "xmlinput.end":"</ROW>
)
;