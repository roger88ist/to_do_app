class AddGroupIdToToDo < ActiveRecord::Migration[5.1]
  def change
    add_reference :to_dos, :group, foreign_key: true
  end
end
