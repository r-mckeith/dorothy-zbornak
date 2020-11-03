Rails.application.routes.draw do
  resources :users
  resource :session
  get 'signup' => 'users#new'
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
end
