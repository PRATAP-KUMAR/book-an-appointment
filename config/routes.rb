Rails.application.routes.draw do
  devise_for :users, path: "", path_names: {
                       sign_in: "login",
                       sign_out: "logout",
                       sign_up: "signup",
                     }, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }
  resources :reservations
  resources :cars
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    resources :cars
  end
end
