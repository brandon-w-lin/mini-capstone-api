class CreateProductImages < ActiveRecord::Migration[7.0]
  def change
    create_table :product_images do |t|
      t.integer :product_id
      t.integer :rank
      t.string :url

      t.timestamps
    end
  end
end
