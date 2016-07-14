class ApartmentsController < ApplicationController

  def new
    @tower = Tower.find(params[:tower_id])
    @apartment = @tower.apartments.new
  end

  def create
    @tower = Tower.find(params[:tower_id])
    apartment = @tower.apartments.new(apartment_params)
    apartment.save
    redirect_to tower_path(@tower)
  end

  def show
    @tower = Tower.find(params[:tower_id])
    @apartment = Apartment.find(params[:id])
    @people = @apartment.people.all
  end

  def edit
    @tower = Tower.find(params[:tower_id])
    @apartment = @tower.apartments.find(params[:id])
  end

  def update
    @tower = Tower.find(params[:tower_id])
    apartment = @tower.apartments.find(params[:id])
    apartment.update(apartment_params)
    redirect_to tower_path(@tower)
  end


  private

  def apartment_params
    params.require(:apartment).permit(:id,:name,:tower_id,:floor)
  end
end
