class CartedProductsController < ApplicationController
  def create
    @cartedproduct = CartedProduct.new(
      user_ID: params[:user_id] # to be determined by the token
      product_id: params[:product_id] 
      quantity: params[:quantity]
      status: params[:status] # to be set by the controller
      order_id: params[:order_id] # to be determined by the orders controller
    )
    if @cartedproduct.save
      render json: @cartedproduct.as_json # to be changed to the whole cart
    else  
      render json: { errors: @cartedproduct.errors.full_messages }, status: 422
  end
end
