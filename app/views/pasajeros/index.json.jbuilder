json.array!(@pasajeros) do |pasajero|
  json.extract! pasajero, :id, :nombre, :identidad, :fecha_nacimiento, :asiento_id, :boleto_id
  json.url pasajero_url(pasajero, format: :json)
end
