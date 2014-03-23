class AddPasajeroToBoleto < ActiveRecord::Migration
  def change
  	add_column :boletos, :nombre, :string
  	add_column :boletos, :identidad, :string
  end
end
