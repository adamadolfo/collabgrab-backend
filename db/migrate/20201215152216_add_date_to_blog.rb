class AddDateToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :date, :string
  end
end
