class AccesoriesController < ApplicationController
  # GET /accesories
  # GET /accesories.json
  def index
    @accesories = Accesory.all

    render json: @accesories
  end

  # GET /accesories/1
  # GET /accesories/1.json
  def show
    @accesory = Accesory.find(params[:id])

    render json: @accesory
  end

  # POST /accesories
  # POST /accesories.json
  def create
    @accesory = Accesory.new(params[:accesory])

    if @accesory.save
      render json: @accesory, status: :created, location: @accesory
    else
      render json: @accesory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accesories/1
  # PATCH/PUT /accesories/1.json
  def update
    @accesory = Accesory.find(params[:id])

    if @accesory.update_attributes(params[:accesory])
      head :no_content
    else
      render json: @accesory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accesories/1
  # DELETE /accesories/1.json
  def destroy
    @accesory = Accesory.find(params[:id])
    @accesory.destroy

    head :no_content
  end
end
