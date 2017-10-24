class CreateRoomTags < ActiveRecord::Migration[5.0]
  def change
    create_table :room_tags do |t|
      t.references :room
      t.references :tag
      t.timestamps
    end
  end
end
