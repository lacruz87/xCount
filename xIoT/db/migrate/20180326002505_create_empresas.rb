class CreateEmpresas < ActiveRecord::Migration[5.1]
  def change
    create_table :empresas do |t|
      t.string :nombre_empresa
      t.string :rut_empresa
      t.string :url_app

      t.timestamps
    end
  end
end
