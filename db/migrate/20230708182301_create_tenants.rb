class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :contact_details
      t.string :lease_details
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
