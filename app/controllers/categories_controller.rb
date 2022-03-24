class CategoriesController < ApplicationController
  def create
    category = Category.new(
      name: params[:name],
    )
    if category.save
      render json: category.as_json
    else
      render json: { errors: category.errors.full_messages }, status: 422
    end
  end
end
