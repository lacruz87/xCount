class CreateE1eventoDispositivos < ActiveRecord::Migration[5.1]
  def change
    create_table :e1evento_dispositivos do |t|
      t.references :e1dispositivo, foreign_key: true
      t.string :pin
      t.string :UM
      t.float :factor
      t.references :e1recurso, foreign_key: true
      t.references :e1tipo_evento, foreign_key: true
      t.string :sub_tipo_evento
      t.string :clasificacion_evento

      t.timestamps
    end
  end
end
