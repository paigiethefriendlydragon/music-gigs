Rails.application.routes.draw do
  root 'gig#index'
  devise_for :users

  resources :gig, only: [:index]
  resources :users, only: [:index, :new, :show, :create]

  namespace :api do
        namespace :v1 do
            resources :users, only: [:index, :show, :new, :create]
        end
    end
end
