class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.string :last_name
      t.string :turn

      t.timestamps null: false
    end
  end
end
