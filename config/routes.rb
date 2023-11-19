Rails.application.routes.draw do
  devise_for :users
  resources :articles
  post 'articles/update_pref', to: 'articles#update_pref'
  root "articles#index"

end
