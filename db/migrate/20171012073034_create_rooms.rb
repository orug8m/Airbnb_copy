class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title, null: false, index: true
      t.string :type, null: false
      t.integer :price, null: false
      t.integer :cleaning_cost, null: false
      t.integer :vat_jst, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.integer :hm_rooms, null: false
      t.integer :hm_bets, null: false
      t.integer :hm_bathrooms, null: false
      t.string :amenity
      t.string :facility
      t.string :rules
      t.string :meal_time_of_day
      t.integer :host_id,null: false, foreign_key: true
      t.timestamps
    end
  end
end
