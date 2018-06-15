select 
name ,
sname ,
edrpou ,
place ,
row_number() over (partition by place order by edrpou) as rn_by_place
from UO_table2
limit 20;

