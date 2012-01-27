SupplySide::Application.routes.draw do
  root :to => "pages#home"
  match "/secret" => "pages#secret"
end
