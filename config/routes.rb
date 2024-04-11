Rails.application.routes.draw do
  # Devise routes for users
  devise_for :users
  # root to: "pages#home"

  # Additional routes for resources
  resources :bosses_nemesis
  resources :guides do
    resources :bosses_nemesis
  end
  resources :groups
  resources :users, only: [:index, :show]

  # Custom routes
  # get 'dashboard', to: 'dashboard#index'

end
