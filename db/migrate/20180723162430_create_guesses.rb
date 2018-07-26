class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.integer :value
      t.string :color
      t.integer :lucky
      # t.references :room, foreign_key: true
      # t.references :user, foreign_key: true
      t.integer :room_id
      # t.integer :user_id
      t.timestamps
    end
  end
end
