Rails.application.routes.draw do
  defaults export: true do
    devise_for :users, skip: [:sessions, :passwords, :registrations]

    as :user do
      get "login", to: "users/sessions#new", as: :new_user_session
      post "login", to: "users/sessions#create", as: :user_session
      match "logout", to: "users/sessions#destroy", as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
    end

    resources :expenses
    resources :categories
  end
  root to: "expenses#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
