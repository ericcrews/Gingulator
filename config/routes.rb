Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :home, :app_infos
  root to: 'home#home'
  post '/' => 'app_infos#data'
end
