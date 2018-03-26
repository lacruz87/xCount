class CreateEventIns < ActiveRecord::Migration[5.1]
  def change
    create_table :event_ins do |t|
      t.float :valor
      t.string :coreid
      t.datetime :published_at_dt
      t.string :tipo
      t.string :ubicacion
      t.string :centro
      t.string :almacen

      t.timestamps
    end
  end
end
