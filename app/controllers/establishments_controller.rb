class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource
  # GET /establishments
  # GET /establishments.json
  def index
    @establishments = Establishment.all
    authorize! :read, @establishments
  end

  # GET /establishments/1
  # GET /establishments/1.json
  def show
    @locations = @establishment.locations
    @hash = Gmaps4rails.build_markers(@locations) do |i, marker|
      marker.lat i.latitude
      marker.lng i.longitude
      marker.infowindow i.address
    end
  end

  # GET /establishments/new 
  def new
    @establishment = Establishment.new
  end

  # GET /establishments/1/edit
  def edit
  end

  # POST /establishments
  # POST /establishments.json
  def create
    @establishment = Establishment.new(establishment_params)
    @establishment.locations.new(address: params[:address])
    respond_to do |format|
      if @establishment.save
        format.html { redirect_to @establishment, notice: 'Establishment was successfully created.' }
        format.json { render :show, status: :created, location: @establishment }
      else
        format.html { render :new }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /establishments/1.json
  def update
    respond_to do |format|
      if @establishment.update(establishment_params)
        format.html { redirect_to @establishment, notice: 'Establishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @establishment }
      else
        format.html { render :edit }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /establishments/1
  # DELETE /establishments/1.json
  def destroy
    @establishment.destroy
    respond_to do |format|
      format.html { redirect_to establishments_url, notice: 'Establishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #Use callbacks 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establishment
      @establishment = Establishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establishment_params
      params.require(:establishment).permit(:name, :kind_of_food, :website, :phone, :address, :image, :description)
    end
end
