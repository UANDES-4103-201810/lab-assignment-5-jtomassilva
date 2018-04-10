class PlacesController < ApplicationController
  def create
    @place = Place.new(params[:place])
    if @place.save
      redirect_to @place
    else
      render json: @place
    end
  end

  def destroy
    @place = Place.destroy(params[:id])
  end

  def update
    @place = Place.update(params[:id])
    if @place.save
      redirect_to @place
    else
      render json: @place
    end
  end

  def show
    @place = Place.find(params[:id])
  end
end
