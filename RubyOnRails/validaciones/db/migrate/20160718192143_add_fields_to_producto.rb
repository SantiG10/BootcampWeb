class AddFieldsToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :talla, :string
    add_column :productos, :color, :string
    add_column :productos, :descripcion, :string
    add_column :productos, :costo, :float
  end
end
