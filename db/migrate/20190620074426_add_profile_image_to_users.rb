class AddProfileImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Profile_image, :text
  end
end
