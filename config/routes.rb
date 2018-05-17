Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :concerts do
    resources :comments
  end


  namespace :api do
    namespace :v1 do
      resources :concerts do
        resources :comments, only: [:create]
      end
    end
  end
end

# add only statements
# fetch(`api/v1/concerts/${id}/comments.json`, {
