class CreateDestinos < ActiveRecord::Migration
  def change
    create_table :destinos do |t|
      t.string :nombre
      t.string :cod

      t.timestamps
    end
  end
end
