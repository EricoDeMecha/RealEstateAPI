class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.integer :number_of_floors
      t.string :amenities
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
