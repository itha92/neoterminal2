class Pasajero < ActiveRecord::Base
  belongs_to :asiento
  belongs_to :boleto
end
