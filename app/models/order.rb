class Order < ApplicationRecord
  belongs_to :user, through: :carted_products #does this work
  has_many :carted_products
end
