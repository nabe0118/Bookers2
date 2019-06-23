class RemoveProfileImageFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Profile_image, :text
  end
end
