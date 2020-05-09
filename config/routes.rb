Rails.application.routes.draw do
  namespace :users_office do
    resources :safeties
  end
  namespace :users_office do
    resources :privacies
  end
  namespace :users_office do
    resources :terms
  end
  namespace :users_office do
    resources :complaints
  end
  namespace :users_office do
    resources :contacts
  end
  namespace :page do
    get 'tariff/index'
  end
  namespace :page do
    get 'contact/index'
    post 'contact/new'
    get 'complaint/index'
    post 'complaint/new'
  end
  namespace :page do
    get 'risk/index'
  end
  namespace :page do
    get 'socio/index'
  end
  namespace :page do
    get 'education/index'
  end
  namespace :page do
    get 'demo/index'
  end
  namespace :page do
    get 'credit/index'
  end
  namespace :page do
    get 'correspodent/index'
  end
  namespace :page do
    get 'who/index'
  end
  mount Ckeditor::Engine => '/ckeditor'
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
  
  get '/inicio', to: 'site/welcome#index'
  get '/informacoes', to: 'page/info#index'
  get '/produtos', to: 'page/welcome#index'
  get '/quem-somos', to: 'page/who#index'
  get '/correspodentes', to: 'page/correspodent#index'
  get '/demonstracoes-financeiras', to: 'page/demo#index'
  get '/educacao-financeira', to: 'page/education#index'
  get '/politica-responsabilidade-socio-ambiental-prs', to: 'page/socio#index'
  get '/tabela-de-risco', to: 'page/risk#index'
  get '/tabela-de-tarifas', to: 'page/tariff#index'
  get '/sistema-de-informacao-de-credito-scr', to: 'page/credit#index'
  get '/contato', to: 'page/contact#new'
  get '/denuncia', to: 'page/complaint#new'
  get '/painel-administrativo/sign-in', to: 'users_office/welcome#index'
  get '/termos-de-uso', to: 'page/terms#index'
  get '/politica-de-privacidade', to: 'page/privacy#index'
  get '/seguranca', to: 'page/safety#index'
 end
