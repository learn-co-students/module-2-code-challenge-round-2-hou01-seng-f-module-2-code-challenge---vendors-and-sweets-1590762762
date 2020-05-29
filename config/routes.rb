Rails.application.routes.draw do
  get 'verndor_sweet/new'

  get 'verndor_sweet/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/vendors', to: "vendors#index", as: "vendors"

end
