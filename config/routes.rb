Rails.application.routes.draw do
  root 'pages#index'
  get 'about' => 'pages#about'
  get 'legal' => 'pages#legal'
  resources :songs, :bands, :playlists, :artists
end
