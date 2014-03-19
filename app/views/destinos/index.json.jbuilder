json.array!(@destinos) do |destino|
  json.extract! destino, :id, :nombre, :cod
  json.url destino_url(destino, format: :json)
end
