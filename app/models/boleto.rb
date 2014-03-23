class Boleto < ActiveRecord::Base
  belongs_to :precio_boletos
  belongs_to :terminal
end
