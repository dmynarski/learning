class AddAppointmentDate < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :date, :date
  end
end
