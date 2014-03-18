class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :codigo
      t.string :telefono
      t.string :direccion
      t.boolean :is_active

      t.timestamps
    end
  end
end
