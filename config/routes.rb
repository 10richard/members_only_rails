Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :posts, only: [:index, :new, :create]
  root to: 'posts#index'
end
