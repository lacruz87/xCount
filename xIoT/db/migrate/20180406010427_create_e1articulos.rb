class CreateE1articulos < ActiveRecord::Migration[5.1]
  def change
    create_table :e1articulos do |t|
      t.string :sku
      t.string :descripcion
      t.string :UM
      t.string :formato
      t.string :familia
      t.string :sub_Familia
      t.string :ude1
      t.string :ude2

      t.timestamps
    end
  end
end
