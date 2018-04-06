class CreateAtipoEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :atipo_eventos do |t|
      t.string :nombre
      t.string :ruta_bd

      t.timestamps
    end
  end
end
