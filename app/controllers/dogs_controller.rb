class DogsController < ApplicationController

	def index
		@dogs = Dog.all 
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)
		if @dog.save
			redirect_to dogs_url, notice: "Saved to Database Successfully"
		else
			flash.now[:notice] = "Something went wrong. Didn't save."
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		@dog = Dog.find(params[:id])
		if @dog.update(dog_params)
			redirect_to dogs_url, notice: "Successfully updated!"
		else
			flash.now[:notice] = "something went wrong, didn't update your dog."
			render :edit
		end
	end
end

private
	def dog_params
		params.require(:dog).permit(:name, :breed, :age)		
	end
	
end