class Pretask < ApplicationRecord
  belongs_to :to_do
  belongs_to :task, class_name: "ToDo"
end
