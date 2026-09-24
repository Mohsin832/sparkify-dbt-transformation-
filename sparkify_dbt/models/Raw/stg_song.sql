select 
    record_content:artist_id ::string as artist_id,
    record_content:artist_latitude ::double as artist_latitude,
    record_content:artist_location ::string as artist_location,
    record_content:artist_longitude::double as artist_longitude,
    record_content:artist_name::string as artist_name,
    record_content:duration::double as duration,
    record_content:num_songs::int as num_songs,
    record_content:song_id::string as song_id,
    record_content:title::string as title,
    record_content:year::int as year

from 
    {{source('raw', 'song_data_raw' )}}