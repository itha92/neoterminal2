class Boleto < ActiveRecord::Base
  belongs_to :precio_boletos
  belongs_to :terminal
  has_one :pasajero
end