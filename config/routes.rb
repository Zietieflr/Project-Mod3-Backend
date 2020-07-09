Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  get "random", to: "categories#random"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
