class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:category]
      category = Category.find_by(name: params[:category].to_s)
      @products = category.products
    else
      @products = Product.all
    end
    render :index
  end

  def show
    id = params[:id]
    @product = Product.find_by(id: id)
    render :show
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      product_images: params[:product_images],
      description: params[:description],
      supplier_id: params[:supplier_id],
    )

    if @product.save
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.product_images = params[:product_images] || product.product_images
    product.description = params[:description] || product.description

    if product.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
  end
end
