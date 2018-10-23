Rails.application.routes.draw do
  resources :simulations, only: [:index]
end
