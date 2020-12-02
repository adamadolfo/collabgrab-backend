class CreateProjectSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :project_skills do |t|
      t.integer :skill_id
      t.integer :project_id

      t.timestamps
    end
  end
end
