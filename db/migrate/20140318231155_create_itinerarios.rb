class CreateItinerarios < ActiveRecord::Migration
  def change
    create_table :itinerarios do |t|
      t.time :hora_salida
      t.string :destino
      t.string :origen
      t.date :fecha
      t.references :terminal, index: true

      t.timestamps
    end
  end
end
