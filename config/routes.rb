Rails.application.routes.draw do
  resources :shop_databases
  devise_for :users
  
  #トップページのルーティング。
  root 'pages#show'
  
  get '/top/index'
  
  
  
  #「鯉な店データベースとは？」のルーティング。  
  get   '/about', to: 'about#about' 

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
