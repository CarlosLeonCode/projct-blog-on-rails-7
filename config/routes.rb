Rails.application.routes.draw do
  root "blog_posts#index"
  get "/blog_post/new", to: "blog_posts#new", as: :new_blog_post # This goes before show, because the order matters.
  get "/blog_post/:id", to: "blog_posts#show" , as: :blog_post
  get "/blog_post/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  post "/blog_posts", to: "blog_posts#create", as: :blog_posts
  # blog_post_path(:id) -> "/blog_post/1"
  # blog_post_url(:id)  -> "https://localhost:3000/blog_post/1"
end
