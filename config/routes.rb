Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "routes#index"

  get 'owners', to: 'owners#all'
  get 'owners/count', to: 'owners#count'
  resources :owners, only: [:show, :create, :update, :destroy]

  get 'buildings', to: 'buildings#all'
  get 'buildings/count', to: 'buildings#count'
  resources :buildings, only: [:show, :create, :update, :destroy]

  get 'units', to: 'units#all'
  get 'units/count', to: 'units#count'
  resources :units, only: [:show, :create, :update, :destroy]

  get 'tenants', to: 'tenants#all'
  get 'tenants/count', to: 'tenants#count'
  resources :tenants, only: [:show, :create, :update, :destroy]

  resources :tenants, only: [] do
    resources :rent_payments, only: [:index, :show, :create]
    resources :utility_payments, only: [:index, :show, :create]
    resources :service_payments, only: [:index, :show, :create]
  end

  resources :rent_payments, only: [:show, :update, :destroy]
  resources :utility_payments, only: [:show, :update, :destroy]
  resources :service_payments, only: [:show, :update, :destroy]
end
