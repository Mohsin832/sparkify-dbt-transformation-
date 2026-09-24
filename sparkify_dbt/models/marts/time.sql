select start_time,
extract(hour from start_time) as hour,
extract(day from start_time) as day,
extract(week from start_time) as week,
extract(month from start_time) as month,
extract(year from start_time) as year,
extract(dayofweek from start_time) as weekday
 from {{ref('stg_logs')}}