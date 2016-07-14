class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.integer :tower_id
      t.integer :floor

      t.timestamps null: false
    end
  end
end
