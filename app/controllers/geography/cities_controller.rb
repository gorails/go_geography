module Geography
  class CitiesController < ApplicationController
    before_action :set_city, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    load_and_authorize_resource except: [:create]
    #add_breadcrumb 'Cidades', :cities_path
    #add_breadcrumb 'Criar nova cidade', '', :only => [:new, :create]
    #add_breadcrumb 'Editar nova cidade', '', :only => [:edit, :update]
    # GET /cities
    def index
      @cities = City.all.order(:name).page(params[:page])
    end

    # GET /cities/1
    def show
     # add_breadcrumb @city.name, ''
    end

    # GET /cities/new
    def new
      @city = City.new
    end

    # GET /cities/1/edit
    def edit
    end

    # POST /cities
    def create
      authorize! :create, @city
      @city = City.new(city_params)
      if @city.save
        redirect_to @city, notice: 'City was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /cities/1
    def update
      if @city.update(city_params)
        redirect_to @city, notice: 'City was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /cities/1
    def destroy
      @city.destroy
      redirect_to cities_url, notice: 'City was successfully destroyed.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def city_params
      params.require(:geography_city).permit(:name, :cdg_ibge, :state_id, :population_2010, :demographic_density, :gentle, :area)
    end
  end
end
