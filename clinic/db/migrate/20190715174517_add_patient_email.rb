class AddPatientEmail < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :email, :string
  end
end
