class ProductsController < ApplicationController
  def index
    render json: Product.all.as_json
  end

  def show
    id = params[:id]
    render json: Product.find_by(id: id)
  end
end
