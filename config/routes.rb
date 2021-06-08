Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resources :users, only:[:index, :show, :edit, :update]
  resources :meals, only:[:new, :create, :show, :edit, :update] do
    resources :post_comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
