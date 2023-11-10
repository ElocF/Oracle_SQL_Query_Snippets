-- Get todays date
SELECT TO_CHAR(TRUNC(SYSDATE + 1) - 1/(24*60*60) ,'yyyy-Mon-dd ') FROM DUAL

--Or below can be used after select statment 

where
to_char (f.fmc_to_date, 'YYYY-Mon-DD') >= sysdate