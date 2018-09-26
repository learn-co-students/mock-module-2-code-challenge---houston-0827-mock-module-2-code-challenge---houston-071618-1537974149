class EmployeesController < ApplicationController
  def index
    @employees = Employee.all 
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @new_employee = Employee.new
  end

  def create
    new_em = Employee.create(employee_params)
    redirect_to new_em
  end

  def edit
    @em = Employee.find(params[:id])
  end

  def update
    Employee.update(@em.id, employee_params)
    redirect_to @em
  end

  private 

  def employee_params 
    params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url,:dog_id)
  end 
end
