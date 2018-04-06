class CreateE1produccions < ActiveRecord::Migration[5.1]
  def change
    create_table :e1produccions do |t|
      t.datetime :timestamp
      t.references :e1recurso, foreign_key: true
      t.float :qty
      t.references :e1articulo, foreign_key: true
      t.string :in_ref
      t.string :grupo

      t.timestamps
    end
  end
end
