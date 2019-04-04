Rails.application.routes.draw do

  get 'getfinalise/new'
  get 'getinitiate/new'
  get 'gettrader/new'
  get 'getdrug/new'
  
  get 'reject_customer/:id', to: 'reject_customer#reject', as: 'reject_customer'
  get 'approve_costumer/:id', to: 'approve_costumer#approve', as: 'accept_customer'
  get 'approve_costumer', to: 'approve_costumer#addLicense'

  get 'reject_pharmacist/:id', to: 'reject_pharmacist#reject', as: 'reject_pharmacist'
  get 'approve_pharmacist/:id', to: 'approve_pharmacist#approve', as: 'accept_pharmacist'
  get 'approve_pharmacist', to: 'approve_pharmacist#addLicense'

  get 'reject_distributor/:id', to: 'reject_distributor#reject', as: 'reject_distributor'
  get 'approve_distributor/:id', to: 'approve_distributor#approve', as: 'accept_distributor'
  get 'approve_distributor', to: 'approve_distributor#addLicense'

  get 'reject/:id', to: "reject#reject", as: 'reject_manufacturer'
  get 'approve/:id', to: "approve#approve", as: 'accept_manufacturer'
  get 'approve', to: 'approve#addLicense'

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
  
  get 'finalisetransaction', to: "finalisetransaction#create"
  get 'finalisetransaction/new'
  get 'finalisetransaction/destroy'
  get 'initiatetransaction', to: "initiatetransaction#create"
  get 'initiatetransaction/new'
  get 'initiatetransaction/destroy'
  get 'issuelicense', to: "issuelicense#create"
  get 'issuelicense/new'
  get 'issuelicense/destroy'

  get 'drugadd/new'
  get 'drugadd', to: "drugadd#create"
  get 'drugadd/destroy'
  devise_for :users
  get "session/new"
  get "session", to: "sessions#create", as: 'ses'
  # get "/auth/:provider/callback", to: "sessions#create"
  #get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  root to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
