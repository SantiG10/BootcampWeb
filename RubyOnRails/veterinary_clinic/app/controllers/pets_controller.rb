class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  def show
    @pet = Pet.find(params[:id])
    @appointments = @pet.appointments.all
  end

  private

  def pet_params
    params.require(:pet).permit(:id,:name,:pet_type,:age)
  end
end
