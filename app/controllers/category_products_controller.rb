class CategoryProductsController < ApplicationController
  def create
    categoryProducts = CategoryProducts.new(
      name: params[:name],
    )
    if categoryProducts.save
      render json: categoryProducts.as_json
    else
      render json: { errors: categoryProducts.errors.full_messages }, status: 422
    end
  end
end
