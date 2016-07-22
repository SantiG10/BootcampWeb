class AddTotalToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :total, :float
  end
end
