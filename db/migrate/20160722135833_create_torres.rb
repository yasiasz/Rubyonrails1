class CreateTorres < ActiveRecord::Migration[5.0]
  def change
    create_table :torres do |t|
      t.string :nombre
      t.string :portero

      t.timestamps
    end
  end
end
