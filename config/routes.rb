Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' } 
  resources :app_infos 
  root to: 'app_infos#index'
  post '/' => 'app_infos#data'
end
