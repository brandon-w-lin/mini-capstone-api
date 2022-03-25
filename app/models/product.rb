class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :name, length: { maximum: 255 }
  # validates :price, presence: true

  belongs_to :supplier
  has_many :product_images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  def is_discounted?
    return price < 10
  end

  def tax
    return (price * 0.09).round(2)
  end

  def total
    return price + tax
  end
end
