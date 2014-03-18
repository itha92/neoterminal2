json.array!(@precio_boletos) do |precio_boleto|
  json.extract! precio_boleto, :id, :precio, :clase, :destino, :origen
  json.url precio_boleto_url(precio_boleto, format: :json)
end
