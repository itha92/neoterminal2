class AddColumsBoleto < ActiveRecord::Migration
  def change
  	add_reference :boletos, :itinerarios
  end
end
