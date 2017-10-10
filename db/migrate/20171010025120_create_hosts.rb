class CreateHosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :gender, null: false
      t.string :birth_month, null: false
      t.integer :birth_day, null: false
      t.integer :birth_year, null: false
      t.string :email, null: false, unique: true
      t.integer :tel, null: false, unique: true
      t.string :currency,  null: false
      t.string :city_country, null: false
      t.text :description, null: false, unique: true
      t.timestamps
    end
  end
end
