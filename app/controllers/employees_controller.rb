class EmployeesController < ApplicationController
  def index
    @es = Employee.all
  end

  def show
    @e = Employee.find(params[:id])
  end

  def new
    @e = Employee.new
  end

  def create
    @e = Employee.create(e_params)
    redirect_to employee_path(@e)
  end

  def edit
    @e = Employee.find(params[:id])
  end

  def update
    @e = Employee.find(params[:id])
    @e.update(e_params)
    redirect_to employee_path(@e)
  end

private
  def e_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end

end
