Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :owners, only: [:show, :create, :update, :destroy]
  resources :buildings, only: [:show, :create, :update, :destroy]
  resources :units, only: [:show, :create, :update, :destroy]
  resources :tenants, only: [:show, :create, :update, :destroy]

  resources :tenants, only: [] do
    resources :rent_payments, only: [:index, :create]
    resources :utility_payments, only: [:index, :create]
    resources :service_payments, only: [:index, :create]
  end

  resources :rent_payments, only: [:show, :update, :destroy]
  resources :utility_payments, only: [:show, :update, :destroy]
  resources :service_payments, only: [:show, :update, :destroy]
end
