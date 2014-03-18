json.array!(@terminals) do |terminal|
  json.extract! terminal, :id, :codigo, :telefono, :direccion, :is_active
  json.url terminal_url(terminal, format: :json)
end
