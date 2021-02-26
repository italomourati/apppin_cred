Rails.application.routes.draw do
  namespace :page do
    get 'calc_two/index'
    post 'calc_two/index'
    post 'calc_two/up_clear'
  end
  namespace :page do
    get 'standby/index'
   
  end
  namespace :page do
    get 'calc/index'
  end
  namespace :users_office do
    resources :fees
  end
  namespace :users_office do
    resources :calls
  end
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
    get 'fee/index'
    post 'fee/new'
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
    get  'who/index'
    get  'calc/index'
    post 'calc/enviar'
    post 'calc/reenviar'
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
  get '/relatorio-ouvidoria', to: 'page/call#index'
  get '/denuncia-anonima', to: 'page/fee#new'
  get '/simulador-de-consignado', to: 'page/calc#index'
  #post '/simulador-de-consignado', to: 'page/calc/index'
  post '/simulador-de-consignado', to: 'page/calc#enviar'
  post '/simulador-de-consignado', to: 'page/calc#reenviar'
  get 'informacao-pdf' , to: 'page/standby#index'
  get '/simulador-de-cdc', to: 'page/calc_two#index'
  post '/simulador-de-cdc', to: 'page/calc_two#enviar'
  post '/simulador-de-cdc', to: 'page/calc_two#up_clear'


  #rotas admins

  get '/admin/home', to: 'users_office/welcome#index'
  get '/admin/imagens', to: 'users_office/images#index'
  get '/admin/correspodentes', to: 'users_office/correspondets#index'
  get '/admin/demonstracao-financeira', to: 'users_office/demos#index'
  get '/admin/educacao-financeira', to: 'users_office/educations#index'

  get '/admin/politica-de-privacidade', to: 'users_office/privacies#index'
  get '/admin/politica-responsabilidade-socioambiental', to: 'users_office/repossibilities#index'
  get '/admin/tabela-de-risco', to: 'users_office/risks#index'
  get '/admin/seguranca', to: 'users_office/safeties#index'
  get '/admin/sistema-de-informacoes-de-credito', to: 'users_office/credits#index'

  get '/admin/tabela-de-tarifas', to: 'users_office/tariffs#index'
  get '/admin/termos-de-uso', to: 'users_office/terms#index'
  get '/admin/contatos', to: 'users_office/contacts#index'
  get '/admin/denuncias', to: 'users_office/complaints#index'

  get '/admin/produtos', to: 'users_office/products#index'
  get '/admin/quem-somos', to: 'users_office/whos#index'
  get '/admin/rodape', to: 'users_office/footers#index'
  get '/admin/usuarios', to: 'users_office/users#index'
  get '/admin/ouvidoria', to: 'users_office/calls#index'
  get '/admin/denuncia-anonima', to: 'users_office/fees#index'
 end
