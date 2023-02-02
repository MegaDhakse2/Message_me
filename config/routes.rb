Rails.application.routes.draw do
  root "chatroom#index"
  get "login", to: "sessions#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
