class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :name, length: { maximum: 255 }
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
end
