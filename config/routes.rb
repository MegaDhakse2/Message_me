Rails.application.routes.draw do
  root "chatroom#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  # get "/", to: "chatroom#new"
  post "/", to: "chatroom#create"
  #why post "message" here..

  mount ActionCable.server, at: "/cable"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
