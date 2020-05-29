Rails.application.routes.draw do
  resources :vendor_sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/vendors', to: "vendors#index", as: "vendors"
  resources :sweets
  # , only: [:show, :index]
  resources :vendors
  # , only: [:show, :index]
end
