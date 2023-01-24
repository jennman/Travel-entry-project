class LocationsController < ApplicationController

    def index 
    
        render json: Location.all
    
    end

    def show
        
        location_found = Location.find_by(id: params[:id])
        render json: location_found

    end 
end
