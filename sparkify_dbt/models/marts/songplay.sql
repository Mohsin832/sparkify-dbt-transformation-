select

    {{ dbt_utils.generate_surrogate_key(['e.start_time', 'e.userId', 'e.sessionId']) }} as songplay_id,

    e.start_time,
    e.userId,
    e.level,
    s.song_id,
    s.artist_id,
    e.sessionId,
    e.location,
    e.userAgent

from {{ ref('stg_logs') }} e

left join {{ ref('stg_song') }} s
    on e.song = s.title
    and e.artist = s.artist_name