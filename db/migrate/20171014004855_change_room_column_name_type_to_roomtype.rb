class ChangeRoomColumnNameTypeToRoomtype < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :type, :string, null: false
    add_column :rooms, :roomtype, :string, null: false
  end
end
