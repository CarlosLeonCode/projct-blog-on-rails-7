Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts
  get "/about", to: "landing#about"
=begin
  resources it's a helper and create all routes below:
  # get "/blog_posts",            to: "blog_posts#index", as: :blog_posts
  # get "/blog_post/new",         to: "blog_posts#new", as: :new_blog_post       # This goes before show, because the order matters.
  # get "/blog_post/:id",         to: "blog_posts#show" , as: :blog_post
  # patch "/blog_post/:id",       to: "blog_posts#update"                        # use the same as: :blog_post, rails knows what to do using the form action http method.
  # delete "/blog_post/:id",      to: "blog_posts#destroy"                       # use the same as: :blog_post, rails knows what to do using the form action http method.
  # get "/blog_post/:id/edit",    to: "blog_posts#edit", as: :edit_blog_post
  # post "/blog_posts",           to: "blog_posts#create", as: :blog_posts
  
  The difference between use path & url
  # blog_post_path(:id) -> "/blog_post/1"
  # blog_post_url(:id)  -> "https://localhost:3000/blog_post/1"
=end
  root "blog_posts#index"
end
