class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    id = params[:id]
    @supplier = Supplier.find_by(id: id)
    render :show
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      supplier_id: params[:supplier_id],
    )
    if supplier.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end

  def update
    product_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)

    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    supplier.supplier_id = params[:supplier_id] || supplier.supplier_id

    if supplier.save
      render json: supplier.as_json
    else
      render json: { errors: supplier.errors.full_messages }, status: 422
    end
  end

  def destroy
    supplier_id = params[:id]
    supplier = Supplier.find_by(id: supplier_id)
    supplier.destroy
  end
end
