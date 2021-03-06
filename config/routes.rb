Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  get "signup", to: "users#new"
  resources :tasks
  resources :users, only: [:create, :new]
end
