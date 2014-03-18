json.array!(@itinerarios) do |itinerario|
  json.extract! itinerario, :id, :hora_salida, :destino, :origen, :fecha, :terminal_id
  json.url itinerario_url(itinerario, format: :json)
end
