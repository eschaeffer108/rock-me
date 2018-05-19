Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :concerts, only: [:create, :new, :index, :show] do
    resources :comments, only: [:create, :new, :show]
  end


  namespace :api do
    namespace :v1 do
      resources :concerts do
        resources :comments, only: [:create, :new, :show]
      end
    end
  end
end

# add only statements
# fetch(`api/v1/concerts/${id}/comments.json`, {
