class CreateEncomiendas < ActiveRecord::Migration
  def change
    create_table :encomiendas do |t|
      t.string :destinatario
      t.string :remitente
      t.decimal :peso
      t.string :destino
      t.string :origen
      t.boolean :is_delivered
      t.boolean :is_shipped
      t.boolean :is_onhold
      t.date :fecha
      t.references :terminal, index: true
      t.references :precio_paquete, index: true

      t.timestamps
    end
  end
end
