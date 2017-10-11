class AddHostToUserid < ActiveRecord::Migration[5.0]
  def change
    add_column :hosts, :user_id, :string, null: false
  end
end
