class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to post_path(@employee)
    else
      render :new
    end

  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
    redirect_to employee_path(@employee)
    else
      render :edit
    end

  end

  private

  def employee_params
    params.require(:employee).permit!
  end
end
