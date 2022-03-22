class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def show
    id = params[:id]
    order = Order.find_by(id: id)
    render :show
  end

  def create
    product = Product.find_by(id: params[:product_id])

    calc_subtotal = product.price * params[:quantity]
    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total,
    )

    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }, status: 422
    end
  end
end
