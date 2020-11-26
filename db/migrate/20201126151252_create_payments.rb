class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :payment_method
      t.datetime :payment_date

      t.timestamps
    end
  end
end
