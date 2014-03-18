json.array!(@encomiendas) do |encomienda|
  json.extract! encomienda, :id, :destinatario, :remitente, :peso, :destino, :origen, :is_delivered, :is_shipped, :is_onhold, :fecha, :terminal_id, :precio_paquete_id
  json.url encomienda_url(encomienda, format: :json)
end
