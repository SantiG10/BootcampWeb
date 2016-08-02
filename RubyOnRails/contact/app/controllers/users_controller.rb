class UsersController < ApplicationController
  def index

  end

  def contact_form
    @name = params[:name]
    puts @name
    redirect_to contact_path
  end

  def save_contact
    @name = params[:name]
    puts @name
    redirect_to contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:nombre, :color)
  end

end
