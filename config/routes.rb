Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  # get 'cocktails/:id/doses/new', to: 'doses#new'
  # post 'cocktails/:id/doses', to: 'doses#create'
  delete 'doses/:id', to: 'doses#destroy'
end
