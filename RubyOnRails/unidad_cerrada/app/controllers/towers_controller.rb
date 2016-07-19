class TowersController < ApplicationController
  def index
    @tower = Tower.all
  end

  def new
    @tower = Tower.new
  end

  def create
    @tower = Tower.new(tower_params)
    if @tower.save
      redirect_to towers_path, alert: "Exit, Tower Saved"
    else
      render "new", alert: "Error, Tower Not Saved"
    end
  end

  def edit
		@tower = Tower.find(params[:id])
	end

	def update
		tower = Tower.find(params[:id])
		tower.update(tower_params)
		redirect_to towers_path
	end

  def show
    @tower = Tower.find(params[:id])
    @apartments = @tower.apartments.all
  end

  private

	def tower_params
		params.require(:tower).permit(:id,:name,:watchman)
	end

end
