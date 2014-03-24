class AddreferencetoBoleto < ActiveRecord::Migration
  def change
  	add_reference :boletos, :itinerarios, index: true
  end
end
