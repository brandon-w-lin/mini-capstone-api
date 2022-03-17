class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :name, length: { maximum: 255 }
  # validates :price, presence: true

  def is_discounted?
    return price < 10
  end

  def tax
    return (price * 0.09).round(2)
  end

  def total
    return price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Product_image.find_by(id: product_image_id)
  end
end
