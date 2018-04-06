class CreateE1centros < ActiveRecord::Migration[5.1]
  def change
    create_table :e1centros do |t|
      t.references :e1empresa, foreign_key: true
      t.string :nombre
      t.string :descripcion
      t.string :direccion
      t.integer :numero
      t.string :comuna
      t.string :region
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
