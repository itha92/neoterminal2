class AddAutobusRefToItinerario < ActiveRecord::Migration
  def change
    add_reference :itinerarios, :autobus, index: true
  end
end
