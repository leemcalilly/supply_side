SupplySide::Application.routes.draw do
  
  resources :password_resets   
  resources :sessions
  resources :users
  
  match "/logout" => "sessions#destroy"
  match "/login" => "sessions#new"
  match "/recover" => "password_resets#new"
  match "/signup" => "users#new"
  match "/secret" => "pages#secret"

  root :to => "pages#home"
end
