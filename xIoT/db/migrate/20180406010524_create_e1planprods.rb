class CreateE1planprods < ActiveRecord::Migration[5.1]
  def change
    create_table :e1planprods do |t|
      t.references :e1articulo, foreign_key: true
      t.references :e1recurso, foreign_key: true
      t.datetime :inicio_plan
      t.datetime :fin_plan
      t.string :orden_trabajo
      t.float :q_plan
      t.datetime :inicio_real
      t.datetime :fin_real

      t.timestamps
    end
  end
end
