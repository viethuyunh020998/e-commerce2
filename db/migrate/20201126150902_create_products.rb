class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.references :brand, null: false, foreign_key: true
      t.text :descript
      t.string :operating_system

      t.timestamps
    end
  end
end
