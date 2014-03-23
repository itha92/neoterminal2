class DropTablePasajero < ActiveRecord::Migration
  def change
  	drop_table  :pasajeros
  end
end
