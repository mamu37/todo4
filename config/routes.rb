Rails.application.routes.draw do

  get "/about" => "home#about"
  get "/posts/index2" => "posts#index2"
  get "/posts/new2" => "posts#new2"
  get "/posts/create" => "posts#create2"
  resources :posts
  resources :writes
  get "posts/:id/update" => "posts#update"


  root "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
