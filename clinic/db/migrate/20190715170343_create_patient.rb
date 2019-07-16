class CreatePatient < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.integer :pesel
      t.string :password_digest
      t.timestamps
    end
  end
end
