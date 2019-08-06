Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'accounts#show'

  resources :budgets,        only: [:show, :index] do
    resources :accounts,       only: [:show]
  end
end
