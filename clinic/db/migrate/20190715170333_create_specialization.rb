class CreateSpecialization < ActiveRecord::Migration[6.0]
  def change
    create_table :specializations do |t|
      t.string :name
    end
  end
end
