class PlaylistsController < ApplicationController
  def show
    @playlist = Playlist.find_by name: params[:name]
  end
end
