class ChangePriceToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal, scale: 2, precision: 8
  end
end
