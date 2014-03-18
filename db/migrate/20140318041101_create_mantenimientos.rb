class CreateMantenimientos < ActiveRecord::Migration
  def change
    create_table :mantenimientos do |t|
      t.date :fecha
      t.text :observacion
      t.string :kilometraje
      t.decimal :precio
      t.references :autobus, index: true

      t.timestamps
    end
  end
end
