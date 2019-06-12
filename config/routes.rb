Rails.application.routes.draw do
  root 'gig#index'
  devise_for :users, skip: :all
  devise_scope :user do
    devise_scope :user do
    get  '/users/sign_in'  => 'devise/sessions#new', as: :user_session
    post   '/users/sign_in'  => 'devise/sessions#create', as: :new_user_session
    delete '/users/sign_out' => 'devise/sessions#destroy', as: :destroy_user_session
    # post  '/users/password'  => 'devise/passwords#create', as: :user_password
    # put   '/users/password'  => 'devise/passwords#update', as: nil
    patch '/users/password'  => 'devise/passwords#update', as: :new_password
     get  '/users/sign_up' =>   'devise/registrations#new', as: :new_user_registration
     get '/users/edit' =>  'devise/registrations#edit', as: :edit_user_registration
     patch '/users' =>  'devise/registrations#update', as: :user_registration
     put  '/users' => 'devise/registrations#update'
     delete '/users' => 'devise/registrations#destroy'
     post '/users'=> 'devise/registrations#create'
     get '/users/:id'  => 'users#show', as: :user
    end
  end

  resources :gig, only: [:index, :show]
  resources :instruments, only: [:index, :new, :show, :create]

  namespace :api do
        namespace :v1 do
            resources :users, only: [:index, :show, :new, :create]
        end
    end
    namespace :api do
          namespace :v1 do
              resources :instruments, only: [:index, :show, :new, :create]
          end
      end
  end
#end
    # namespace :api do
    #       namespace :v1 do
    #           resources :instruments, only: [:index, :show, :new, :create]
    #       end
    #   end
