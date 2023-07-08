class CreateUtilityPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :utility_payments do |t|
      t.decimal :amount
      t.date :payment_date
      t.string :utility_type
      t.references :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
