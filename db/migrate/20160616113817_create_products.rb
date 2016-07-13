class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :caption, limit: 50
      t.string :sub_caption, limit: 50
      t.string :itemcode, limit: 30
      t.text :brief
      t.text :size_info
      t.text :spec
      t.decimal :unit_price, precision: 8, scale: 2, default: 9999
      t.decimal :sale_price, precision: 8, scale: 2, default: 9999
      t.decimal :cost, precision: 8, scale: 2, default: 0
      t.timestamp :deleted_at
      t.timestamps null: false
    end

    create_table :categories_products, id: false do |t|
      t.belongs_to :category, index:true
      t.belongs_to :product, index:true
    end
  end
end
