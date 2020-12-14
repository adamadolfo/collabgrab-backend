class AddUserIdToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :user_id, :integer
  end
end
