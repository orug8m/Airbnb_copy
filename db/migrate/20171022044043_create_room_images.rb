class CreateRoomImages < ActiveRecord::Migration[5.0]
  def change
    create_table :room_images do |t|
      t.string :title
      t.text :image_url,  null: false
      t.references :room,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
