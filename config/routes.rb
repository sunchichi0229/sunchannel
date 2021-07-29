Rails.application.routes.draw do
  resources :videos
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "videos#index"
end
