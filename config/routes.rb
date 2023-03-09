Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :appointments, only: [:new, :create]
  end
  resources :appointments, only: [] do
    get :chat
  end
  # Defines the root path route ("/")
  # root "articles#index"
  get "/dashboard", to: "pages#dashboard"

end
