Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes
  resources :prototypes , only: [:new, :create] do
    resources :comments, only: [:index, :create]
  end
end
