Rails.application.routes.draw do
  #get 'vendor_sweets/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/sweets', to: "sweets#index", as: "sweets"
  #get '/vendors', to: "vendors#index", as: "vendors"

  resources :vendors, only: [:index, :show]
  resources :sweets, only: [:index, :show]
  resources :vendor_sweets, only: [:new,:create]

end
