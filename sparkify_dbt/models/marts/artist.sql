select artist_id, artist_name as name, artist_location as location, 
artist_latitude as latitude, artist_longitude as longitude
  from {{ref('stg_song')}}