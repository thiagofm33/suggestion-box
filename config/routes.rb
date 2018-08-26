Rails.application.routes.draw do
  root controller: :suggestions, action: :index
  resources :suggestions, only: [:create, :destroy]
end
