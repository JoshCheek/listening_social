require 'rails_helper'

RSpec.feature 'Unauthenticated user can listen to music' do
  specify 'what the thing says...' do
    our_love = autumn_leaves = nil

    playlists = [
      Playlist.create! do |pl|
        pl.name = 'Jazz'
        our_love = pl.songs.build title:          "Our Love Is Here To Stay",
                                  artist:         "Ella Fitzgerald",
                                  soundcloud_url: "FILL ME IN WHEN WE GET HERE!"

        autumn_leaves = pl.songs.build title:          "Autumn Leaves",
                                       artist:         "Chet Baker",
                                       soundcloud_url: "FILL ME IN WHEN WE GET HERE!"

        pl.currently_playing = our_love
      end,
      Playlist.create!(name: 'Rock'),
      Playlist.create!(name: 'Nu Metal'),
    ]

    # I am a potential user, considering whether the app is worth my time (I'm not logged in)

    # I go to ListeningSocial and see a list of genres (these will be prepopulated)
    page.visit root_path
    playlists.each do |playlist|
      expect(page).to have_content playlist.name
    end

    # I click "Jazz"
    page.click_on 'Jazz'

    # Now I'm in the "Jazz" channel
    expect(page.current_url).to eq playlist_path('Jazz')

    # I can see see a list of the other "Jazz" enthusiasts with me
    # TODO: descope for now :)

    # I see that "Our Love Is Here To Stay" is playing
    page.within '.current .title' do
      expect(page.text).to eq our_love.title
    end

    # I see the upcoming queue, the next song is "Autumn Leaves" by "Chet Baker"
    page.within '.queue .next .title' do
      expect(page.text).to eq autumn_leaves.title
    end

    # I can hear it playing, a slight syncopation causes me to bob my head
    # TODO: filll me in
  end
end
