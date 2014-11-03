Rails.application.routes.draw do
  root 'pages#index'
  get 'about' => 'pages#about'
  get 'bands' => 'pages#bands'
  get 'legal' => 'pages#legal'
  resources :songs
end
