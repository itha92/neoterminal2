class Encomienda < ActiveRecord::Base
  belongs_to :terminal
  belongs_to :precio_paquete
end
