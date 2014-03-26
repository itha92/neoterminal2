class Autobus < ActiveRecord::Base
	has_many :asiento
	has_one :empleado
	has_many :mantenimiento
	has_many :itinerario
end
