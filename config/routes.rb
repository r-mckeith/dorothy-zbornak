Rails.application.routes.draw do
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
  resources :genres
  resources :users
  resource :session
  get 'signup' => 'users#new'
  get 'movies/filter/:scope' => 'movies#index', as: :filtered_movies
end
