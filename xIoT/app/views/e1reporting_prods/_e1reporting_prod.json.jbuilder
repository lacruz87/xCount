json.extract! e1reporting_prod, :id, :Timestamp, :recurso, :centro, :ubicacion, :timestamp_5m, :timestamp_10m, :timestamp_30m, :timestamp_1h, :timestamp_8h, :timestamp_24h, :timestamp_w, :timestamp_MM, :timestamp_Y, :Q, :time_Q, :categoria, :articulo, :familia, :sub_familia, :referencia, :created_at, :updated_at
json.url e1reporting_prod_url(e1reporting_prod, format: :json)
