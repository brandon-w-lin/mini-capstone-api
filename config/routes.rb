Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/all_products", controller: "products", action: "all_products"
  get "/one_product", controller: "products", action: "one_product"
  get "product/:id" => "products#product_lookup"
  get "/product" => "products#product_lookup"
end
