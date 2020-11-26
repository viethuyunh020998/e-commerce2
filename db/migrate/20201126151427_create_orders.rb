class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.float :receiver
      t.string :address
      t.string :phone
      t.integer :status

      t.timestamps
    end
  end
end
