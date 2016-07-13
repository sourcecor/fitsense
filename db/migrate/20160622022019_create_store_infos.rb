class CreateStoreInfos < ActiveRecord::Migration
  def change
    create_table :store_infos do |t|
      t.string :caption
      t.string :address
      t.string :phone, limit: 20
      t.decimal :latitude, precision: 10, scale: 6, index:true
      t.decimal :longitude, precision: 10, scale: 6, index:true
      t.text :content
      t.timestamps null: false
    end
  end
end
