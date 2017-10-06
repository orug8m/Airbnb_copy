class UserBirthMonthShouldBeString < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birth_month, :string
  end
end
