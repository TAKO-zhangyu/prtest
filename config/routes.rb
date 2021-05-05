Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'new_name', to: 'devise/registrations#new_name', as: 'new_name'
    patch 'create_name', to: 'devise/registrations#create_name', as: 'create_name'
  end
  get 'users/:id' => 'users#show'
  root 'boards#index'
  resources :boards
end
