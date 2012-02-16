Hinfo::Application.routes.draw do

  ActiveAdmin.routes(self)

  resources :topics do
    resources :links
  end

  resources :links do
    resources :ratings
    member do
      post "clicked"
    end
  end

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  match "/auth/failure" => "sessions#failure"

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'topics#index'

end
