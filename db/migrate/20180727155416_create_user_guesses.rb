class CreateUserGuesses < ActiveRecord::Migration[5.2]
  def change
 
    create_table :user_guesses do |t|
      t.integer :user_id
      t.integer :guess_id
      t.timestamps
    end
  end
end
