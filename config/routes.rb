Untapped::Application.routes.draw do
  root :to => "pages#show", :id => 'home'
  get '/:id', :to => 'pages#show', :as => :pages
end
