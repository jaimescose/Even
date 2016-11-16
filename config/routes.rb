Rails.application.routes.draw do
  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :eventos
  resources :usuarios, only: [:create, :new]
  root 'welcome#index'
end
