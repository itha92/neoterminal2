class Boleto < ActiveRecord::Base
  belongs_to :precio_boletos
  belongs_to :terminal
  belongs_to :itinerario
end

