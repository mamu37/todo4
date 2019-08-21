Rails.application.routes.draw do

  get "/about" => "home#about"
  get "/posts/index2" => "posts#index2"
  resources :posts
  get "posts/:id/update" => "posts#update"

  root "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
