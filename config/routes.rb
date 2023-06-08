Rails.application.routes.draw do
  devise_for :users, controllers: { sessoions: 'users/sessions', registrations: 'users/registrations' }

  resources :posts, only: [:index, :new, :create]
  root to: 'posts#index'
end
