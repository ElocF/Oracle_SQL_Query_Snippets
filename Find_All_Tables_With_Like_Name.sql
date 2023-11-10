--find all tables with like name -

--search term has to be in brackets, with % sign on each end and in capitals in order to work

select
    t.owner as schema_name,
    t.table_name
from
    sys.all_tab_columns col
inner join sys.all_tables t on col.owner = t.owner 
    and
    col.table_name = t.table_name
where
    col.column_name like '%WATERSHED%'