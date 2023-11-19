Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    authenticated :user do
    root 'articles#index', as: :authenticated_root
  end
    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :articles
  resources :user_surveys
  post 'articles/update_pref', to: 'articles#update_pref'
  root to: "articles#index"
end
