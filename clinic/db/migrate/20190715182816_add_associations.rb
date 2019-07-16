class AddAssociations < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :specialization_id, :integer
  end
end
