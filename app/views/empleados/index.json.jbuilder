json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :identidad, :nombre, :direccion, :telefono, :fecha_nacimiento, :puesto, :is_active, :tiene_bus, :terminal_id, :autobus_id
  json.url empleado_url(empleado, format: :json)
end
