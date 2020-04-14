Rails.application.routes.draw do
  namespace :page do
    get 'welcome/index'
    get 'info/index'
  end
  namespace :users_office do
    resources :tariffs
  end
  namespace :users_office do
    resources :credits
  end
  namespace :users_office do
    resources :risks
  end
  namespace :users_office do
    resources :repossibilities
  end
  namespace :users_office do
    resources :educations
  end
  namespace :users_office do
    resources :demos
  end
  namespace :users_office do
    resources :correspondets
  end
  namespace :users_office do
    resources :whos
  end
  namespace :users_office do
    resources :products
  end
  namespace :users_office do
    resources :footers
  end
  namespace :users_office do
    resources :images
  end
  namespace :users_office do
    get 'users/index'
    resources :users
  end
  devise_for :users
  namespace :users_office do
    get 'welcome/index'
  end
  namespace :site do
    get 'welcome/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: 'site/welcome#index'

 end
