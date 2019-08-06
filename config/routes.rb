Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'devise/sessions#new'

  resource :budgets,        only: [:show, :index]
  resource :accounts,       only: [:index]
end
