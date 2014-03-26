class Asiento < ActiveRecord::Base
  belongs_to :autobus
  has_one :boleto
end