class RemoveMarcaFromProductos < ActiveRecord::Migration
  def change
    remove_column :productos, :marca, :string
  end
end
