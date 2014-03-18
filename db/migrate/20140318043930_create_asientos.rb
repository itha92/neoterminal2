class CreateAsientos < ActiveRecord::Migration
  def change
    create_table :asientos do |t|
      t.string :asiento_no
      t.string :tipo
      t.boolean :is_active
      t.references :autobus, index: true

      t.timestamps
    end
  end
end
