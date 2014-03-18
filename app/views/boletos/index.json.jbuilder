json.array!(@boletos) do |boleto|
  json.extract! boleto, :id, :fecha, :descuento, :subtotal, :total, :precio_boletos_id, :terminal_id
  json.url boleto_url(boleto, format: :json)
end
