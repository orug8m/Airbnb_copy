class Add < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :gender, :string
    add_column :users, :birth_month, :integer
    add_column :users, :birth_day, :integer
    add_column :users, :birth_year, :integer
    add_column :users, :tel, :integer
    add_column :users, :currency, :string
    add_column :users, :city_country, :string
    add_column :users, :discription, :text
  end
end
