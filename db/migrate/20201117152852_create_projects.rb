class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :details
      t.string :location

      t.timestamps
    end
  end
end
