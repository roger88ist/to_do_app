class AddCompletedInfoToToDos < ActiveRecord::Migration[5.1]
  def change
    add_column :to_dos, :completed, :boolean, default: false
    add_column :to_dos, :completed_at, :datetime
  end
end
