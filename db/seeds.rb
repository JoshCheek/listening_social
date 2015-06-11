Playlist.create! do |pl|
  pl.name = 'Jazz'

  pl.currently_playing = pl.songs.build \
    title:          "Our Love Is Here To Stay",
    artist:         "Ella Fitzgerald",
    soundcloud_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/189366180&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"

  pl.songs.build \
    title:          "Autumn Leaves",
    artist:         "Chet Baker",
    soundcloud_url: "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/179364153&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"
end

Playlist.create! name: 'Rock'

Playlist.create! name: 'Nu Metal'
