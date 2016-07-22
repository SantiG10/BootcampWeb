class RenameCostoFromProducto < ActiveRecord::Migration
  def change
    rename_column :productos, :costo, :costo_unitario
  end
end
