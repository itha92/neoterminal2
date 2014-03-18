class CreatePrecioBoletos < ActiveRecord::Migration
  def change
    create_table :precio_boletos do |t|
      t.decimal :precio
      t.string :clase
      t.string :destino
      t.string :origen

      t.timestamps
    end
  end
end
