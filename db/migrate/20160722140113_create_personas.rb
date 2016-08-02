class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :identificacion
      t.string :apartamento

      t.timestamps
    end
  end
end
