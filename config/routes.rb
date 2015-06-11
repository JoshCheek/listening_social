Rails.application.routes.draw do
  root 'home#index'

  get 'playlists/:name' => 'playlists#show', as: :playlist
end
