class CreateE1recursos < ActiveRecord::Migration[5.1]
  def change
    create_table :e1recursos do |t|
      t.references :e1centro, foreign_key: true
      t.string :nombre
      t.references :e1ubicacion, foreign_key: true, :null => true
      t.string :linea
      t.string :familia
      t.string :tipo
      t.float :productividad_hora

      t.timestamps
    end
  end
end
