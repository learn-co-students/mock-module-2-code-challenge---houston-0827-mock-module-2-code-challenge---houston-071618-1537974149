class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find_by_id(params[:id])
    end
    
    def new
        @dog = Dog.new
    end
        
    def create
        @dog = Dog.new(dog_params)
        if @dog.valid?
            @dog.save
            redirect_to dog_path(@dog)
        else
            render :new
        end
    end

    def edit
        @dog = Dog.find_by_id(params[:id])
    end

    def update
        @dog = Dog.find_by_id(params[:id])
        @dog.update(dog_params)
        if @dog.valid?
            @dog.save
            redirect_to dog_path(@dog)
        else
            render :edit
        end
    end

    

    def destroy
        Dog.find(params[:id]).destroy
        redirect_to dogs_url
    end

        private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

    

end
