class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.integer :value
      t.string :color
      t.integer :lucky
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
