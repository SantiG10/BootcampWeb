class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :document
      t.integer :age

      t.timestamps null: false
    end
  end
end
