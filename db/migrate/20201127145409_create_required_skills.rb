class CreateRequiredSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :required_skills do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
