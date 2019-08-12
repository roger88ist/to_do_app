class AddToDoIdToPretask < ActiveRecord::Migration[5.1]
  def change
    add_reference :pretasks, :to_do, foreign_key: true
  end
end
