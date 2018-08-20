class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.integer :number
      t.integer :room_id
      t.timestamps
    end
  end
end
