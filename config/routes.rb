Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get "/welcome", to: "home#index"

  get "/login", to: "login#index"
  post "/login", to: "login#signIn"

  get "/register", to: "register#index"
  post "/register", to: "register#signUp"

  resources :users do
    collection do
      get "/users/new", to: "users#new"
      post "/users", to: "users#create"
      get "/users/:id", to: "users#show"
      get "/users/:id/edit", to: "users#edit"
      put "/users/:id", to: "users#update", as: :user
      delete "/users/:id", to: "users#destroy"
    end
  end
end
