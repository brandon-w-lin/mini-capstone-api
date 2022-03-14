class ProductsController < ApplicationController
  def index
    render json: Product.all.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def show
    id = params[:id]
    render json: Product.find_by(id: id).as_json(methods: [:is_discounted?, :tax, :total])
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    product.save
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description

    product.save
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
  end
end
