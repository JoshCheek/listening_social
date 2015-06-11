require 'rails_helper'

RSpec.describe Playlist do
  describe 'queue' do
    # note to self: probably eventually, the join table will need a position
    it 'does not include the current playing song' do
      playlist = Playlist.create! do |pl|
        pl.currently_playing = pl.songs.build title: 'song1'
                               pl.songs.build title: 'song2'
      end
      expect(playlist.queue).to_not include playlist.songs.first
      expect(playlist.queue).to     include playlist.songs.last
    end

    it 'does not include songs before the current playing song' do
      playlist = Playlist.create! do |pl|
                               pl.songs.build title: 'song1'
        pl.currently_playing = pl.songs.build title: 'song2'
                               pl.songs.build title: 'song3'
      end
      expect(playlist.queue).to_not include playlist.songs.first
      expect(playlist.queue).to     include playlist.songs.last
    end

    it 'requeues the songs when it hits the end'
  end
end
