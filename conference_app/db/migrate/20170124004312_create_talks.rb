class CreateTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :talks do |t|
      t.string :topic
      t.integer :duration
      t.datetime :start_time

      t.timestamps
    end
  end
end
