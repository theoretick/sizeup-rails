class BuildingsController < ApplicationController
  before_action :set_building, only: [:show, :edit, :update, :destroy]
  # GET /buildings
  # GET /buildings.json
  def index
    @buildings = Building.all
    @cities = City.all
    heights = []

    # minus 130px for border-top plus building footer name
    viewport_height = 778 - 130

    @buildings.each do |building|
      heights << building[:height]
    end

    tallest_building = heights.max.to_f

    @adjusted_height = (viewport_height / tallest_building)

    # Defaults all boxes to checked and also makes them all checked if
    # the user unchecks them all
    @selected_cities = params[:view] || session[:view] || City.city_id_hash

    # Sets @buildings to only those in checked cities
    @buildings = @buildings.order("height").where(city_id: @selected_cities.keys)
  end

  # Method to handle CSV Imports, from CSV Import RailsCast
  def import
    Building.import(params[:file])
    redirect_to root_url, notice: "Buildings imported."
  end 
  
  # Method to add a gargoyle to the top of your building
  def gargoyle_ify(building)
    building.height >= 300
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
  end

  # GET /buildings/new
  def new
    @building = Building.new
    @cities = City.all
  end

  # GET /buildings/1/edit
  def edit
    @cities = City.all
  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render action: 'show', status: :created, location: @building }
      else
        format.html { render action: 'new' }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1
  # PATCH/PUT /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:name, :height, :city_id, :view, :gargoyle, :address)
    end
end
