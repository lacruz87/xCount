class CreateE1ubicacions < ActiveRecord::Migration[5.1]
  def change
    create_table :e1ubicacions do |t|
      t.string :nombre
      t.string :almacen

      t.timestamps
    end
  end
end
