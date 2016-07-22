class RenameTableProductos < ActiveRecord::Migration
  def change
    rename_table :productos, :products
  end
end
