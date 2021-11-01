Rails.application.routes.draw do
  get 'postcomments/create'
  get 'postcomments/destroy'
  devise_for :users
  root to: 'homes#top'

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :postcomments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end

end
