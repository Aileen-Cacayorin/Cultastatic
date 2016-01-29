Rails.application.routes.draw do
  devise_for :users


  root to: 'categories#index'

  resources :categories do
    resources :movies
  end

  resources :movies do
    resources :reviews
  end

  resources :movies do
    resources :videos
  end

  resources :movies do
    resources :locations  
  end
end
