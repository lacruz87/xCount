class CreateWIns < ActiveRecord::Migration[5.1]
  def change
    create_table :w_ins do |t|
      t.string :event
      t.string :name
      t.string :data
      t.string :coreid
      t.string :published_at

      t.timestamps
    end
  end
end
