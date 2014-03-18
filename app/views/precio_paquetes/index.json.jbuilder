json.array!(@precio_paquetes) do |precio_paquete|
  json.extract! precio_paquete, :id, :tipo_paquete, :precio
  json.url precio_paquete_url(precio_paquete, format: :json)
end
