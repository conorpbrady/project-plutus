Rails.application.routes.draw do

  get 'transactions/create'
  get 'transactions/destroy'
  get 'transactions/update'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'accounts#show'

  resources :budgets,          only: [:show, :index] do
    resources :accounts,       only: [:show, :create, :update] do
      resources :transactions, only: [:create, :update]
    end
  end
end
