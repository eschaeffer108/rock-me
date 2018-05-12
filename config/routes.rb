Rails.application.routes.draw do
  root 'concerts#index'
  devise_for :users
  resources :concerts do
    resources :comments
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end