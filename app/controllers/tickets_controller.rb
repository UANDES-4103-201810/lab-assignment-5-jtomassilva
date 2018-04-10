class TicketsController < ApplicationController
  def create
    @ticket = Ticket.new(params[:id])
    if @ticket.save
      redirect_to @ticket
    else
      render json: @ticket
    end
  end

  def destroy
    @ticket = Ticket.destroy(params[:id])
  end

  def update
    @ticket = Ticket.update(params[:id])
    if @ticket.save
      redirect_to @ticket
    else
      render json: @ticket
    end
  end

  def show
    @ticket = Ticket.show(params[:id])
  end
end
