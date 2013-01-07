Untapped::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  root :to => "pages#show", :id => 'home'
  get '/:id', :to => 'pages#show', :as => :pages

  resources :users
  resources :user_steps
end
