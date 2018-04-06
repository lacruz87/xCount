class CreateE1empresas < ActiveRecord::Migration[5.1]
  def change
    create_table :e1empresas do |t|
      t.string :nombre_empresa
      t.string :rut_empresa
      t.string :url_app
      t.string :url_api
      t.string :tipo
      t.string :creado_por

      t.timestamps
    end
  end
end
