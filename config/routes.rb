Rails.application.routes.draw do
  defaults export: true do
    resources :expenses
    resources :categories
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
