class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.string :project_id
      t.string :task_id

      t.timestamps
    end
  end
end
