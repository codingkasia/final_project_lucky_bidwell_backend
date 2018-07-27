class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.integer :value
      t.integer :room_id
      t.string :color
      t.integer :lucky
      t.boolean :found
     
      t.timestamps
    end
  end
end
