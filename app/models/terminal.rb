class Terminal < ActiveRecord::Base
	has_many :encomienda
	has_many :boleto
	has_many :empleado
end