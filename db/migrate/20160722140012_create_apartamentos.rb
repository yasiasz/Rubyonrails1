class CreateApartamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :apartamentos do |t|
      t.string :nombre
      t.string :torre
      t.string :piso

      t.timestamps
    end
  end
end
