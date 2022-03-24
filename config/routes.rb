Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "/categories" => "categories#create"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  get "/categoryproducts" => "categoryproducts#index"
  get "/categoryproducts/:id" => "categoryproducts#show"
  post "/categoryproducts" => "categoryproducts#create"
  patch "/categoryproducts/:id" => "categoryproducts#update"
  delete "/categoryproducts/:id" => "categoryproducts#destroy"

  post "/product_images" => "product_images#create"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  patch "/users/:id" => "users#update"
end
