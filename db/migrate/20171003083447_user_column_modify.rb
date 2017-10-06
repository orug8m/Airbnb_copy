class UserColumnModify < ActiveRecord::Migration[5.0]
  def chage
    change_column :users, :email, :text, null: false, default: "", unique: true
  end
end
