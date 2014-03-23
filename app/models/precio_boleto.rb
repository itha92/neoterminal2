class PrecioBoleto < ActiveRecord::Base
	has_one :boleto

	def origen_con_destino
  		origen << " - " << destino
  	end
end
