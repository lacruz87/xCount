class CreateE1dispositivos < ActiveRecord::Migration[5.1]
  def change
    create_table :e1dispositivos do |t|
      t.string :coreid
      t.references :e1recurso, foreign_key: true
      t.references :e1centro, foreign_key: true
      t.string :instalacion_ref
      t.string :fabricante_core
      t.string :firmware_version
      t.string :tipo_dispositivo
      t.string :software_version

      t.timestamps
    end
  end
end
