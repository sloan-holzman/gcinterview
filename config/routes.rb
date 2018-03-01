Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'campaigns#index'


  resources :campaigns, only: [:show, :index] do
    resources :donations, only: [:new, :create]
    resources :matching_rules, only: [:new, :create]
  end


end
