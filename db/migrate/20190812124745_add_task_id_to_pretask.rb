class AddTaskIdToPretask < ActiveRecord::Migration[5.1]
  def change
    add_column :pretasks, :task_id, :integer
  end
end
