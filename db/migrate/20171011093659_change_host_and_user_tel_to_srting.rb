class ChangeHostAndUserTelToSrting < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :tel, :string
    change_column :hosts, :tel, :string
  end
end
