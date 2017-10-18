class CreateRoomBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :room_books do |t|
      t.references :user, foreign_key: true, null: false
      t.references :room, foreign_key: true, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :total_guests, null: false
      t.text :requests
      t.timestamps
    end
  end
end
