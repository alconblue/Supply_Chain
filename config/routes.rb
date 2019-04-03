Rails.application.routes.draw do
  get 'walletadd',to:"walletadd#create"
  get 'walletadd/new'
  get 'walletadd/destroy'
  get 'traderadd',to:"traderadd#create"
  get 'traderadd/new'
  get 'traderadd/destroy'
  resources :distributor_licenses
  resources :customer_licenses
  resources :pharmacy_licenses
  resources :manufacturer_licenses
  get 'drugadd/new'
  get 'drugadd', to: "drugadd#create"
  get 'drugadd/destroy'
  devise_for :users
  get "session", to: "sessions#create"
  # get "/auth/:provider/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  root to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
