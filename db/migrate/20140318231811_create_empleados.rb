class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.strig :identidad
      t.string :nombre
      t.text :direccion
      t.string :telefono
      t.date :fecha_nacimiento
      t.string :puesto
      t.boolean :is_active
      t.boolean :tiene_bus
      t.references :terminal, index: true
      t.references :autobus, index: true

      t.timestamps
    end
  end
end
