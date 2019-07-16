class CreateAppointment < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.text :description
      t.timestamps
    end
  end
end
