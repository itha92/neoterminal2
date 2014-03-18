json.array!(@mantenimientos) do |mantenimiento|
  json.extract! mantenimiento, :id, :fecha, :observacion, :kilometraje, :precio, :autobus_id
  json.url mantenimiento_url(mantenimiento, format: :json)
end
