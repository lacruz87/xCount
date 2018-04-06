class CreateAdispositivos < ActiveRecord::Migration[5.1]
  def change
    create_table :adispositivos do |t|
      t.string :coreid
      t.references :arecurso, foreign_key: true
      t.references :acentro, foreign_key: true
      t.string :instalacion_ref
      t.string :fabricante_core
      t.string :firmware_version
      t.string :tipo_dispositivo
      t.string :software_version

      t.timestamps
    end
  end
end
