Rails.application.routes.draw do
  get 'home/top'
  get "/home/about" => "home#about", as: "about"
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:new, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
