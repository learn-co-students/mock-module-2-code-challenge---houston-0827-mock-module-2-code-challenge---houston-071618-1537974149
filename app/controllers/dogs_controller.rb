class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  def show
    @dogs = Dog.find(params[:id])
  end

end
