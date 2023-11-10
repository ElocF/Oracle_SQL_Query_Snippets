-- Find query behind view
-- use only table name not schema.table

select view_name, text
from all_views
where text is not null
and
view_name = 'RSLT_FOREST_COVER_SILV_SVW'