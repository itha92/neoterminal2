class CreateAutobuses < ActiveRecord::Migration
  def change
    create_table :autobuses do |t|
      t.string :codigo
      t.string :marca
      t.string :modelo
      t.integer :capacidad
      t.boolean :is_active

      t.timestamps
    end
  end
end
