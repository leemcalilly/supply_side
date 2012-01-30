SupplySide::Application.routes.draw do  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  get "secret" => "pages#secret", :as => "secret"
  root :to => "pages#home"
end
