class CreateE1tipoEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :e1tipo_eventos do |t|
      t.string :nombre
      t.string :ruta_bd

      t.timestamps
    end
  end
end
