class CreateBoletos < ActiveRecord::Migration
  def change
    create_table :boletos do |t|
      t.date :fecha
      t.decimal :descuento
      t.decimal :subtotal
      t.decimal :total
      t.references :precio_boletos, index: true
      t.references :terminal, index: true
      
      t.timestamps
    end
  end
end
