class ToDoController < ApplicationController
  def index
    @to_dos = ToDo.all
  end

  def update
    to_do = ToDo.find(to_do_params[:id])
  end

  protected

  def to_do_params
    params.permit(:id, :completed)
  end
end
