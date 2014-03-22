class AsignarBusAEmpleadoController < ApplicationController
	def index
		@empleados = Empleado.where(puesto: "Conductor", tiene_bus: false)
		@buses = Autobus.where(is_taken: false)
	end

	def asign
		
	end
end
