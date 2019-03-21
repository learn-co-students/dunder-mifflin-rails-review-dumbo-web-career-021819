require 'pry'
class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(first_name: params[:employee][:first_name], last_name: params[:employee][:last_name], alias: params[:employee][:alias],
    title: params[:employee][:title], office: params[:employee][:office], img_url: params[:employee][:img_url], dog_id: params[:employee][:dog_id])
    if @employee.valid?
      @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(first_name: params[:employee][:first_name], last_name: params[:employee][:last_name], alias: params[:employee][:alias],
      title: params[:employee][:title], office: params[:employee][:office], img_url: params[:employee][:img_url])
      redirect_to @employee
    else
      render :edit
    end 
  end

end
