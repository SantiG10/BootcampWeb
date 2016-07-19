class PeopleController < ApplicationController
  def new
    @tower = Tower.find(params[:tower_id])
    @apartment = Apartment.find(params[:apartment_id])
    @person = @apartment.people.new
  end

  def create
    @tower = Tower.find(params[:tower_id])
    @apartment = Apartment.find(params[:apartment_id])
    person = @apartment.people.new(people_params)
    person.save
    redirect_to tower_apartment_path(@tower,@apartment)
  end

  private

  def people_params
    params.require(:person).permit(:id,:name,:document,:apartment_id)
  end
end
