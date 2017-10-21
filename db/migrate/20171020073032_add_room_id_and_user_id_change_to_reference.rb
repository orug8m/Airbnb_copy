class AddRoomIdAndUserIdChangeToReference < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :host_id, :integer, null: false, foreign_key: true
  end
end
