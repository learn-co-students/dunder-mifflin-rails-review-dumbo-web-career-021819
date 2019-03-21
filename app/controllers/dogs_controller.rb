class DogsController < ApplicationController

  def index
    @dogs = sort_dogs
  end

  def new
    @dog = Dog.new
  end

  def create

  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sort_dogs
    x = Dog.all.sort_by{|dog| dog.employees.count}
    x.reverse
  end
end
