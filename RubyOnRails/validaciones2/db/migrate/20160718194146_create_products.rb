class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :marca
      t.string :talla
      t.string :referencia
      t.string :color
      t.float :costo_unitario
      t.float :total

      t.timestamps null: false
    end
  end
end
