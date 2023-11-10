--select records before/after date
--in this example we are looking for records with a planting completion date more than 20 years ago


select map_label ,planting_1_completion_date from  WHSE_FOREST_VEGETATION.RSLT_OPENING_SVW
where planting_1_completion_date < (SYSDATE - NUMTOYMINTERVAL(20, 'year'))

--Another version of this is also 
select * from  WHSE_FOREST_VEGETATION.RSLT_OPENING_SVW
where planting_1_completion_date > ( trunc(sysdate) -20*12)