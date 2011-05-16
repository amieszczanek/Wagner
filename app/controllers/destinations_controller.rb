class DestinationsController < ApplicationController
  # GET /destinations
  # GET /destinations.xml
  def index
    @destinations = Destination.search(params[:search]).order(:wyjazd_z)
    
    respond_with(@destinations)
  end

  # GET /destinations/1
  # GET /destinations/1.xml
  def show
    @destination = Destination.find(params[:id])
    @seat = Seat.new
    respond_with(@destination)
  end

  # GET /destinations/new
  # GET /destinations/new.xml
  def new
    @destination = Destination.new
    respond_with(@destination)
  end

  # GET /destinations/1/edit
  def edit
    @destination = Destination.find(params[:id])
  end

  # POST /destinations
  # POST /destinations.xml
  def create
    @destination = Destination.new(params[:destination])
    @destination.save
    respond_with(@destination)
  end

  # PUT /destinations/1
  # PUT /destinations/1.xml
  def update
    @destination = Destination.find(params[:id])
    @destination.update_attributes(params[:destination])
    respond_with(@destination)
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.xml
  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    respond_with(@destination)
  end

end
