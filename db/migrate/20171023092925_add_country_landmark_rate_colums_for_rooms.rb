class AddCountryLandmarkRateColumsForRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :country, :string
    add_column :rooms, :landmark, :string
    add_column :rooms, :rate, :integer
  end
end
