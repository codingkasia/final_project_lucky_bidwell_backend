class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :sumPoints
      t.integer :room_id
      t.timestamps
    end
  end
end
