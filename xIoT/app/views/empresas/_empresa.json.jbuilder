json.extract! empresa, :id, :nombre_empresa, :rut_empresa, :url_app, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)
