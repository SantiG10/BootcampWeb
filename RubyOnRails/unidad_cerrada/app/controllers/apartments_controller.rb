class ApartmentsController < ApplicationController

  before_action :set_tower
  def new
    @apartment = @tower.apartments.new
  end

  def create
    apartment = @tower.apartments.new(apartment_params)
    apartment.save
    redirect_to tower_path(@tower)
  end

  def show
    @apartment = Apartment.find(params[:id])
    @people = @apartment.people.all
  end

  def edit
    @apartment = @tower.apartments.find(params[:id])
  end

  def update
    apartment = @tower.apartments.find(params[:id])
    apartment.update(apartment_params)
    redirect_to tower_path(@tower)
  end


  private

  def set_tower
    @tower = Tower.find(params[:tower_id])
  end

  def apartment_params
    params.require(:apartment).permit(:id,:name,:tower_id,:floor)
  end
end
