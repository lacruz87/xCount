class CreateAeventoDispositivos < ActiveRecord::Migration[5.1]
  def change
    create_table :aevento_dispositivos do |t|
      t.references :adispositivo, foreign_key: true
      t.string :pin
      t.string :UM
      t.float :factor
      t.references :arecurso, foreign_key: true
      t.references :atipo_evento, foreign_key: true
      t.string :sub_tipo_evento

      t.timestamps
    end
  end
end
