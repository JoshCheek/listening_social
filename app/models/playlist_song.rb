class PlaylistSong < ActiveRecord::Base
  self.table_name = :playlist_song

  belongs_to :song
  belongs_to :playlist
end
