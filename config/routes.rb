Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :trains do
    resources :carriages
  end
  resources :routes

  resource :search, only: [ :new, :show, :edit]
  
  get 'welcome/index'

  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
