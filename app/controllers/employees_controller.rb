class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end



  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    new_employee = Employee.create(employee_params)
    redirect_to employee_path(new_employee)
  end

  def edit
    @employee  = Employee.find(params[:id])
  end

  def update
    updated_employee = Employee.update(employee_params)
    redirect_to employee_path(updated_employee)
  end

  private

  def employee_params
    permitted = params.require(:employee).permit(:first_name, :last_name, :alias, :title, :img_url, :dog_id)
  end
end
