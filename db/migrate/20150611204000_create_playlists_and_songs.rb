class CreatePlaylistsAndSongs < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string  :name
      t.integer :currently_playing_id
    end

    create_table :playlist_song do |t|
      t.integer :playlist_id
      t.integer :song_id
    end

    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :soundcloud_url
    end
  end
end
