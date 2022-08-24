Rails.application.routes.draw do
  root 'home#index'
  resources :books
  resources :authors
end
