class ToDoController < ApplicationController
  def index
    @to_dos = ToDo.all.order(:created_at)
  end

  def update
    to_do = ToDo.find(to_do_params[:id])
    incomplete_ids = to_do.tasks.incomplete.pluck(:id)

    response_hash = {}

    if completing_to_do && incomplete_ids.present?
      response_hash[:errors] = incomplete_ids
    elsif completing_to_do
      to_do.completed = true
      to_do.save
      response_hash[:success] = to_do.tasks.pluck(:id)
    end

    render json: response_hash.to_json
  end

  protected

  def to_do_params
    params.permit(:id, :completed)
  end

  def completing_to_do
    to_do_params[:completed] == "true"    
  end
end
