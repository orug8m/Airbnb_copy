class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :keytag, null: false, unique: true
      t.timestamps
    end
  end
end
