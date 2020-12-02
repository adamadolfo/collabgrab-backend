class AddImgToSkill < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :img, :string
  end
end
