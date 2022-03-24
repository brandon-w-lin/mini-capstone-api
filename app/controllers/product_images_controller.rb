class ProductImagesController < ApplicationController
  def create
    product_image = ProductImage.new(
      product_id: params[:id],
      rank: params[:rank],
      url: params[:url],
    )

    if product_image.save
      render json: product_image
    else
      render json: { errors: product_image.errors.full_messages }, status: 422
    end
  end
end
