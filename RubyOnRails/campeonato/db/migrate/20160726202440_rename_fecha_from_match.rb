class RenameFechaFromMatch < ActiveRecord::Migration
  def change
    rename_column :matches, :fecha, :date
  end
end
