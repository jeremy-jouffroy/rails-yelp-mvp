Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:index,:show, :new, :create]
  end
  resources :reviews, only: [:show, :new]
end
