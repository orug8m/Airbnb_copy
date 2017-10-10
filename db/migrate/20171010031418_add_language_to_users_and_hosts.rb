class AddLanguageToUsersAndHosts < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :native_language, :string
    add_column :hosts, :native_language, :string, null: false
  end
end
