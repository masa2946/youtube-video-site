Rails.application.routes.draw do
  devise_for :users
  root "youtubes#index"
  get "youtubes/new"
  get "youtubes/show"
  get "posts/index"
  resources :posts, only: [:new, :create, :show]
end
