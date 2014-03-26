class CreateBoletos < ActiveRecord::Migration
  def change
    create_table :boletos do |t|
      t.date :fecha
      t.decimal :descuento
      t.decimal :subtotal
      t.decimal :total
      t.decimal :precio_boletos_id
      t.string :nombre
      t.string :identidad
      t.references :terminal, index: true
      t.references :itinerario, index: true
      t.references :asiento, index: true

      t.timestamps
    end
  end
end
