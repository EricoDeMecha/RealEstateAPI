class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :number
      t.integer :floor
      t.string :size
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
