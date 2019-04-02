Rails.application.routes.draw do
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
