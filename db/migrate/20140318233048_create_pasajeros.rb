class CreatePasajeros < ActiveRecord::Migration
  def change
    create_table :pasajeros do |t|
      t.string :nombre
      t.string :identidad
      t.date :fecha_nacimiento
      t.references :asiento, index: true
      t.references :boleto, index: true

      t.timestamps
    end
  end
end
