Rails.application.routes.draw do
  resources :addresses
  resources :dashboard
  resources :pages
  devise_for :users

  authenticated do
    root 'dashboard#index', as: :authenticated
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
