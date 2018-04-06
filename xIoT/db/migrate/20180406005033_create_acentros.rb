class CreateAcentros < ActiveRecord::Migration[5.1]
  def change
    create_table :acentros do |t|
      t.references :aempresa, foreign_key: true
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
