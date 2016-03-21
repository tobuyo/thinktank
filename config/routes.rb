Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get 'users/new'
  get 'signup'  => 'users#new'
  get 'static_pages/help'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
end
