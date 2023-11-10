--Find All Tables That Contain Specific Column
select 
    t.owner as schema_name,
    t.table_name
from 
    sys.all_tab_columns col
inner join sys.all_tables t on col.owner = t.owner 
    and
        col.table_name = t.table_name
where 
    col.column_name = 'CLIENT_NUMBER_ID'

--Shorter query does the same thing as above
select
table_name,
owner
from
all_tab_columns
where
column_name='EVENT_NUMBER_ID'