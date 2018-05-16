Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :concerts do
    resources :comments do
      resources :replies
      end
    end
end
