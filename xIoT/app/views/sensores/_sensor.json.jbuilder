json.extract! sensor, :id, :coreid, :ubicacion, :factor, :tipo, :ultima_conexion, :empresa_id, :centro, :almacen, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)
