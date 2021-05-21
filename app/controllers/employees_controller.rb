class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    find_employee
    @dogs = Dog.all
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.new(employee_params)
    @dogs = Dog.all
    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def edit
    find_employee
    @dogs = Dog.all
  end

  def update
    find_employee
    @dogs = Dog.all
    @employee.update(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render :edit
    end
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

end
