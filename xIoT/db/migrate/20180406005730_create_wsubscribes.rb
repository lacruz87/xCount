class CreateWsubscribes < ActiveRecord::Migration[5.1]
  def change
    create_table :wsubscribes do |t|
      t.string :coreid
      t.string :id_empresa
      t.string :empresa_nombre
      t.string :empresa_app_url

      t.timestamps
    end
  end
end
