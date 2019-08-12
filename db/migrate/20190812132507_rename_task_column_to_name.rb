class RenameTaskColumnToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :to_dos, :task, :name
  end
end
