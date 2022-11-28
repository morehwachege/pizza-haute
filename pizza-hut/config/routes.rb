Rails.application.routes.draw do
  resources :pizzas, only: [:index]
  resources :restaurants, only: [:index, :show, :destroy]
end
