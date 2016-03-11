Rails.application.routes.draw do
  root 'static_pages#home'
  get 'users/new'
  get 'signup'  => 'users#new'
  get 'static_pages/help'
  resources :users
end
