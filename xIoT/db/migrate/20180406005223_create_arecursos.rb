class CreateArecursos < ActiveRecord::Migration[5.1]
  def change
    create_table :arecursos do |t|
      t.references :acentro, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end
