Rails.application.routes.draw do
  # get 'users/show'  削除　下記で追加済み
  devise_for :users
  root 'post_images#index'
  resources :post_images, only:[:new, :create, :index, :show, :destroy] do
  	resource :favorites, only:[:create, :destroy]
	resource :post_comments, only:[:create, :destroy]
end
  resources :users, only: [:show, :edit, :update]
  #単数形/idがリクエストに含まれない
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


