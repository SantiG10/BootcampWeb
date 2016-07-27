class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :fecha
      t.integer :result

      t.timestamps null: false
    end
  end
end
