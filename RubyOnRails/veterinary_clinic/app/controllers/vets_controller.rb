class VetsController < ApplicationController

  def new
    @vet = Vet.new
  end

  def create
    @vet = Vet.new(vet_params)
    @vet.save
    redirect_to vets_path
  end

  def index
    @vets = Vet.all
  end

  private

  def vet_params
    params.require(:vet).permit(:id,:name,:last_name,:turn)
  end
end
