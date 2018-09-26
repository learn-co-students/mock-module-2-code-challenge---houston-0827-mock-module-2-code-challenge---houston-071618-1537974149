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
        # if Employee.new(employee_params).valid?
            @employee = Employee.create(employee_params)
            redirect_to employee_path(@employee)
        # else
        #     render new_employee_path
        # end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        # if Employee.new(employee_params).valid?
            @employee = Employee.find(params[:id])
            @employee.update(employee_params)
            redirect_to employee_path(@employee)
        # else
        #     render edit_employee_path
        # end
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

end