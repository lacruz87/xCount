class CreateParticles < ActiveRecord::Migration[5.1]
  def change
    create_table :particles do |t|
      t.string :event
      t.string :name
      t.string :data
      t.string :coreid
      t.string :published_at

      t.timestamps
    end
  end
end
