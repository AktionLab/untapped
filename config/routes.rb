Untapped::Application.routes.draw do
  devise_for :users

  root :to => "pages#show", :id => 'home'
  get '/:id', :to => 'pages#show', :as => :pages
end
