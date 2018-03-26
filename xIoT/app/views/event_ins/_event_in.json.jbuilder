json.extract! event_in, :id, :valor, :coreid, :published_at_dt, :tipo, :ubicacion, :centro, :almacen, :created_at, :updated_at
json.url event_in_url(event_in, format: :json)
