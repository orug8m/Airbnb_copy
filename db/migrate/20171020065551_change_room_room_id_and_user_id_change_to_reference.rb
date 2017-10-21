class ChangeRoomRoomIdAndUserIdChangeToReference < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :host_id, :integer, null: false, foreign_key: true
    add_column :rooms, :user_id, :integer, null: false, foreign_key: true
  end
end
