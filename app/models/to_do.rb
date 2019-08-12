class ToDo < ApplicationRecord
  belongs_to :group 

  has_many :pretasks
  has_many :tasks, through: :pretasks, class_name: "ToDo"
end
