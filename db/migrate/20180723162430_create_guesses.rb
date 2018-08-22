class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.integer :value
      t.integer :room_id

      t.timestamps
    end
  end
end
