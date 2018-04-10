class EventsController < ApplicationController
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render json: @event
    end
  end

  def destroy
    @event = Event.destroy(params[:id])
  end

  def update
    @event = Event.update(params[:id])
    if @event.save
      redirect_to @event
    else
      render json: @event
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
