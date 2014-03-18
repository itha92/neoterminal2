class CreatePrecioPaquetes < ActiveRecord::Migration
  def change
    create_table :precio_paquetes do |t|
      t.string :tipo_paquete
      t.decimal :precio

      t.timestamps
    end
  end
end
