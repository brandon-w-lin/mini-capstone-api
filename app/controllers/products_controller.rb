class ProductsController < ApplicationController
  def all_products
    render json: Product.all.as_json
  end

  def one_product
    render json: Product.first.as_json
  end

  def product_lookup
    id = params[:id]
    render json: Product.find_by(id: id)
  end
end
