class CreateRentPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :rent_payments do |t|
      t.decimal :amount
      t.date :payment_date
      t.references :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
