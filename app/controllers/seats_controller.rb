class SeatsController < ApplicationController
   before_filter do
    @destination = Destination.find(params[:destination_id])
  end

  def create
    @seat = @destination.seats.build(params[:seat])
    @seat.save
    respond_with(@destination, @seat, :location => @destination)
  end
  
  def destroy
  @seat = @destination.seats.find(params[:id])
  @seat.destroy
  respond_with(@destination, @seat, :location => @destination)
end
end
