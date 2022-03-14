class Product < ApplicationRecord
  def is_discounted?
    return price < 10
  end

  def tax
    return (price * 0.09).round(2)
  end

  def total
    return price + tax # see if this works
  end
end
