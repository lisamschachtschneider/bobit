Rails.application.routes.draw do
  root 'pages#index'
  get 'about' => 'pages#about'
  get 'legal' => 'pages#legal'
  resources :bands, :playlists, :artists do
    resources :songs 
  end
end
