class ChangeFieldsFromAppointment < ActiveRecord::Migration
  def change
    change_column :appointments, :day, :datetime
    remove_column :appointments, :hour, :time
  end
end
