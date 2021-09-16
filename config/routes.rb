Rails.application.routes.draw do
  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :trains do
    resources :carriages
  end
  resources :routes
  
  get 'welcome/index'

  root "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
