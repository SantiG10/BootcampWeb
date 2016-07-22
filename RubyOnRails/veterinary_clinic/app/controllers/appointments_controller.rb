class AppointmentsController < ApplicationController

  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = @pet.appointments.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @appointment = @pet.appointments.new(appointment_params)
    @appointment.save
    redirect_to pet_path(@pet)
  end

  def show

  end

  def destroy
    @pet = Pet.find(params[:pet_id])
    appointment = @pet.appointments.find(params[:id])
    appointment.destroy
    redirect_to pet_path(@pet)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:id,:day,:pet_id)
  end
end
