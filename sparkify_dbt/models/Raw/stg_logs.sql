select 
record_content:userId::string as userId,
record_content:artist::string as artist,
record_content:auth::string as auth,
record_content:firstName::string as firstName,
record_content:gender:string as gender,
record_content:itemInSession as itemInSession,
record_content:lastName:: string as lastName, 
record_content:length:: int as length,
record_content:level:: string as level, 
record_content:location:: string as location,
record_content:page:: string as page,
record_content:registration:: int as registration,
record_content:sessionId:: int as sessionId,
record_content:song:: string as song,
record_content:status:: bigint as status,
to_timestamp_ntz(record_content:ts::bigint / 1000) as start_time,
record_content:useruserAgent::string as userAgent
from {{source('raw', 'log_data_raw')}}