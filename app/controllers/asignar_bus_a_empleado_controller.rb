class AsignarBusAEmpleadoController < ApplicationController
	def index
		@empleados = Empleado.where(puesto: "Conductor", tiene_bus: false)
		@buses = Autobus.where(is_taken: false)
	end

	def asign
		@id_empleado = :id_empleado
		@id_autobus = :id_autobus
		@emp = Empleado.where(id_autobus)
	end
end
