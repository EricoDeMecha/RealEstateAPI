Rails.application.routes.draw do
  get 'service_payments/show'
  get 'service_payments/update'
  get 'service_payments/destroy'
  get 'utility_payments/show'
  get 'utility_payments/update'
  get 'utility_payments/destroy'
  get 'rent_payments/show'
  get 'rent_payments/update'
  get 'rent_payments/destroy'
  get 'tenants/show'
  get 'tenants/create'
  get 'tenants/update'
  get 'tenants/destroy'
  get 'units/show'
  get 'units/create'
  get 'units/update'
  get 'units/destroy'
  get 'buildings/show'
  get 'buildings/create'
  get 'buildings/update'
  get 'buildings/destroy'
  get 'owners/show'
  get 'owners/create'
  get 'owners/update'
  get 'owners/destroy'
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
