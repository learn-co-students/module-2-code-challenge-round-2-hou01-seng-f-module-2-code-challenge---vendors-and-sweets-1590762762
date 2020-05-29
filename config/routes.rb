Rails.application.routes.draw do
  get 'vendor_sweets/new'

  get 'vendor_sweets/create'

  get 'vendor_sweets/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors, only: [:index, :show]
  resources :vendor_sweets, only: [:index, :show, :create, :new, :destroy]
  resources :sweets, only: [:index, :show]
end
