class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :caption, :limit => 30
      t.string :description, :limit => 50
      t.integer :parent_id, default: 0
      t.integer :seq, default: 0

      t.timestamps null: false
    end

  end
end
