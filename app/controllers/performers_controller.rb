class PerformersController < ApplicationController
  def index
    @performers = Performer.all
  end

  def show
    find_performer
  end

  def new
    @performer = Performer.new
  end

  def create
    @performer = Performer.new(performer_params)
    @performer.user = current_user
    @performer.save!
    redirect_to performer_path(@performer)
  end

  def edit
    find_performer
  end

  def update
    find_performer
    @performer.update(performer_params)
    redirect_to performer_path(@performer)
  end

  def destroy
    find_performer
    @performer.destroy
    redirect_to performers_path
  end

  private

  def find_performer
    @performer = Performer.find(params[:id])
  end

  def performer_params
    params.require(:performer).permit(:name, :description, :hourly_price)
  end
end
