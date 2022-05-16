class PlacesController < ApplicationController

    def index
        @places = Place.all
    end

    def create #actually need to check if this is the right approach. not sure if params has the last 2
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place["created_at"] = params["place"]["created_at"]
        @place["updated_at"] = params["place"]["updated_at"]
        @post.save
        redirect_to "/places"
      end

end
