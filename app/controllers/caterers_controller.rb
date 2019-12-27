class CaterersController < ApplicationController
  def index
    @caterers = Caterer.all
  end

  def show
    find_caterer
  end

  def new
    @caterer = Caterer.new
  end

  def create
    @caterer = Caterer.new(caterer_params)
    @caterer.user = current_user
    @caterer.save!
    redirect_to caterer_path(@caterer)
  end

  def edit
    find_caterer
  end

  def update
    find_caterer
    @caterer.update(caterer_params)
    redirect_to caterer_path(@caterer)
  end

  def destroy
    find_caterer
    @caterer.destroy
    redirect_to caterers_path
  end

  private

  def find_caterer
    @caterer = Caterer.find(params[:id])
  end

  def caterer_params
    params.require(:caterer).permit(:name, :description, :price_per_hour, :address)
  end
end
