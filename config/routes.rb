Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :admins
  devise_for :users

  namespace :admins do
    resources :openings
  end

  namespace :users do
    resources :openings
  end
end
