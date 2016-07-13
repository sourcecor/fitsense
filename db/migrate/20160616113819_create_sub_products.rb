class CreateSubProducts < ActiveRecord::Migration
  def change

    create_table :sub_products do |t|
      t.belongs_to :product, index:true
      t.belongs_to :sub_product_color, index:true
      t.string :color, limit:10
      t.string :size, limit: 4
      t.string :itemcode, limit:30
      t.integer :qty, default: 0
      t.integer :seq, default: 0
      t.timestamp :deleted_at
      t.timestamps null: false
    end
  end
end
