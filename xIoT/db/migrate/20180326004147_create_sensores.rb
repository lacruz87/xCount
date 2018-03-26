class CreateSensores < ActiveRecord::Migration[5.1]
  def change
    create_table :sensores do |t|
      t.string :coreid
      t.string :ubicacion
      t.string :factor
      t.string :tipo
      t.string :ultima_conexion
      t.references :empresa, foreign_key: true
      t.string :centro
      t.string :almacen

      t.timestamps
    end
  end
end
