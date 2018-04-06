class CreateE1reportingProds < ActiveRecord::Migration[5.1]
  def change
    create_table :e1reporting_prods do |t|
      t.datetime :Timestamp
      t.string :recurso
      t.string :centro
      t.string :ubicacion
      t.datetime :timestamp_5m
      t.datetime :timestamp_10m
      t.datetime :timestamp_30m
      t.datetime :timestamp_1h
      t.datetime :timestamp_8h
      t.date :timestamp_24h
      t.date :timestamp_w
      t.date :timestamp_MM
      t.integer :timestamp_Y
      t.float :Q
      t.float :time_Q
      t.string :categoria
      t.string :articulo
      t.string :familia
      t.string :sub_familia
      t.string :referencia

      t.timestamps
    end
  end
end
