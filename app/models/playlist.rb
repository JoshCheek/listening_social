class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  belongs_to :currently_playing, class_name: 'Song'

  def queue
    offset = songs.pluck(:id).index(currently_playing.id).next
    songs.offset(offset)
  end
end
