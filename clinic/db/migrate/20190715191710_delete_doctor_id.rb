class DeleteDoctorId < ActiveRecord::Migration[6.0]
  def change
    remove_column :specializations, :doctor_id
  end
end
