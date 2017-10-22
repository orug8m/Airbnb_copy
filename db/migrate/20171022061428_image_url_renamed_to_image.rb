class ImageUrlRenamedToImage < ActiveRecord::Migration[5.0]
  def change
    remove_column :room_images, :image_url, :text, null: false
    add_column :room_images, :image, :string, null: false
  end
end
