class ToDoController < ApplicationController
  def index
    @to_dos = ToDo.all
  end
end
