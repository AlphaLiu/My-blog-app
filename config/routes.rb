MyBlogApp::Application.routes.draw do
  resources :posts
  match "new_blog", :to => "posts#new", :as => "new"
  root :to => "posts#index", :as => "root"
end
