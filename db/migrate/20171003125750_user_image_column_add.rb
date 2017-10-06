class UserImageColumnAdd < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_image_url, :text
  end
end
